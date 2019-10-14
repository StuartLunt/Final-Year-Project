load('filterCoefficients.mat') 

height=0.450;
res = (2*height*tan(35))/320;
fs=50;
T=1/fs;
n=3000;

t=0:T:(n-1)*T;

spx=0.05*sin(t);
spy=0.05*cos(t);
spdx=spy;
spdy=-spx;

% spx=[zeros(1,n/2) 0.0493*ones(1,n/2)];
% spdx=zeros(1,n);
% spdy=zeros(1,n);
% spy=[zeros(1,n/2) 0.0493*ones(1,n/2)];

% spx=zeros(1,n);
% spdx=zeros(1,n);
% spdy=zeros(1,n);
% spy=zeros(1,n);

% dist=[zeros(1,n/2) 3*ones(1,n/2)];
dist=zeros(1,n);

x=0;
y=0;

xc=res*160;
yc=res*100;

xprev=xc;
yprev=yc;

xint=0;
yint=0;

angy=0;
angx=0;

angxprev = 0;
angyprev = 0;

anglog=zeros(n,2);
xlog=zeros(n,1);
buffer=zeros(n,1);
ylog=zeros(n,1);
intlog=zeros(n,2);
controllogx=zeros(n,3);
controllogy=zeros(n,3);
vlog=zeros(n,2);

fillen = length(Num);
dxbuffer=zeros(fillen,1);
dybuffer=zeros(fillen,1);
xbuffer=zeros(fillen,1);
ybuffer=zeros(fillen,1);

i=1;
stewie = StewartPlatform(152, 18.92, 103, 28.07, 73, 165);
stewie.connect('COM4');
% stewie.calibrate; 
stewie.set_position(0,0,0,0,0,140);
stewie.move(1);

% make graphs
% figure(1)
% ax1=subplot(1,2,1);
% hold on
% pitch=line()

pause(2)


s = serial('COM5', 'BaudRate', 2000000);
s.Timeout=1;
fopen(s);

r = robotics.Rate(fs);
disp('Start!');

% kp=1.5;%39.4*3;% Perhaps a bit aggressive??
% kd=0.45;
% ki=1;

%DESIGNED
kp=3.11;
ki=2.28/kp;
kd=1.22/kp;

limit=10;
rate=2;

while (i<(n+1))
    pos=str2num(fgetl(s));
    buffer(i)=s.BytesAvailable;
    try
        % create error signal
        x=xc-(res*pos(1));
        y=yc-(res*pos(2));
        
        
            xlog(i)=x;
            ylog(i)=y;
            
            xbuffer(1)=x;
            ybuffer(1)=y;
            
            xf=Num*xbuffer;
            yf=Num*ybuffer;
            
            xbuffer(2:fillen)=xbuffer(1:fillen-1);
            ybuffer(2:fillen)=ybuffer(1:fillen-1);
        
            xe=spx(i)-xf;
            ye=spy(i)-yf;
    
    
    % save error data

    
    % integrate error signal
    xint=xint+T*xe;
    yint=yint+T*ye;
%     xint=min(max(xint,-1), 1);
%     yint=min(max(yint,-1), 1);
    
    intlog(1,:)=[xint yint];
    
    % Compute control signal
    dxbuffer(1)=(x-xprev)/T;
    dybuffer(1)=(y-yprev)/T;
    
    dx=spdx(i)-Num*dxbuffer;
    dy=spdy(i)-Num*dybuffer;

%     dx=dxbuffer(1);
%     dy=dybuffer(1);
    
    vlog(i,:)=[dx dy];
    
    angx=rad2deg(-kp*(xe+kd*dx+ki*xint));
    angy=rad2deg(-kp*(ye+kd*dy+ki*yint));
    
    % log control data

    controllogx(i,:)=[kp*x kd*dx ki*xint];
    controllogy(i,:)=[kp*y kd*dy ki*yint];
    
    dangx = angx-angxprev;
    if dangx>rate
        angx=angxprev+rate;
    elseif dangx<-rate
        angx=angxprev-rate;
    end
    
    dangy = angy-angyprev;
    if dangy>rate
        angy=angyprev+rate;
    elseif dangy<-rate
        angy=angyprev-rate;
    end
    
    angx=min(max(angx,-limit),limit);
    angy=min(max(angy,-limit),limit);
    
%     if x<-box
%         angx=-a;
%     elseif x>box
%         angx=a;
%     else
%         angx=0;
%     end
%     
%     if y<-box
%         angy=-a;
%     elseif y>box
%         angy=a;
%     else
%         angy=0;
%     end
    if i<20
        angx=0;
        angy=0;
    end

    dxbuffer(2:fillen)=dxbuffer(1:fillen-1);
    dybuffer(2:fillen)=dybuffer(1:fillen-1);
    
    anglog(i,:)=[angx angy];
    stewie.set_position(angy+dist(i),angx+dist(i),0,0,0,140);
    stewie.move(T);
    catch
        angx=0;
        angy=0;
        stewie.set_position(0,0,0,0,0,140);
        stewie.move(1);
        warning('No object detected by the camera');
    end
    i=i+1;
    xprev=x;
    yprev=y;
    angxprev=angx;
    angyprev=angy;
    waitfor(r);
end
%% recentre
stewie.set_position(0,0,0,0,0,140);
stewie.move(1);
%% view data
figure(2);
clf;
hold on
subplot(1,2,2)
plot(t,anglog);
% plot(controllog);
legend('pitch', 'roll');
title('Control action')
ylabel('Angle (degrees)')
xlabel('Time (s)')

subplot(1,2,1)
hold on
plot(t,xlog);
plot(t,ylog);
plot(t,spx);
% plot(t,spy);
% plot(box*ones(n,1))
% plot(-box*ones(n,1))
% plot(vlog);
legend('x', 'y', 'Setpoint')
title('Ball position')
ylabel('Pposition (m)')
xlabel('Time(s)')
statistics(r)
fclose(s)

% save('CORNERS_HARDBOARD_tt_DESIGNED', 'xlog','ylog','anglog', 'spx','spy')