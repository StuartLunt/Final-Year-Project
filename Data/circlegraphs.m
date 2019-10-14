figure(1)
clf
subplot(3,2,1)
hold on
load('CIRCLE_HARDBOARD_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
plot(t,spy)
title('Table tennis ball on the hardboard plate')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'x set point', 'y set point'}, 'location', 'southeast', 'Orientation', 'horizontal', 'Box', 'off')

subplot(3,2,2)
hold on
load('CIRCLE_HARDBOARD_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
plot(t,spy)
title('Golf ball on the hardboard plate')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'x set point', 'y set point'}, 'location', 'southeast', 'Orientation', 'horizontal', 'Box', 'off')

subplot(3,2,3)
hold on
load('CIRCLE_CLOSEDCELL_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
plot(t,spy)
title('Table tennis ball on closed cell foam')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'x set point', 'y set point'}, 'location', 'southeast', 'Orientation', 'horizontal', 'Box', 'off')

subplot(3,2,4)
hold on
load('CIRCLE_CLOSEDCELL_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
plot(t,spy)
title('Golf ball on closed cell foam')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'x set point', 'y set point'}, 'location', 'southeast', 'Orientation', 'horizontal', 'Box', 'off')

subplot(3,2,5)
hold on
load('CIRCLE_OPENCELL_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
plot(t,spy)
title('Table tennis ball on open cell foam')
xlabel('Time (s)')
ylabel('Position (m)') 
legend({'x', 'y', 'x set point', 'y set point'}, 'location', 'southeast', 'Orientation', 'horizontal', 'Box', 'off')

subplot(3,2,6)
hold on
load('CIRCLE_OPENCELL_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
plot(t,spy)
title('Golf ball on open cell foam')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'x set point', 'y set point'}, 'location', 'southeast', 'Orientation', 'horizontal', 'Box', 'off')

%%
figure(1)
clf
subplot(3,2,1)
hold on
load('CIRCLE_HARDBOARD_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(xlog,ylog)
plot(spx,spy)
title('Table tennis ball on the hardboard plate')
xlabel('x position (m)')
ylabel('y position (m)')
legend({'Ball', 'Set Point'}, 'location', 'southeast')

subplot(3,2,2)
hold on
load('CIRCLE_HARDBOARD_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(xlog,ylog)
plot(spx,spy)
title('Golf ball on the hardboard plate')
xlabel('x position (m)')
ylabel('y position (m)')
legend({'Ball', 'Set Point'}, 'location', 'southeast')

subplot(3,2,3)
hold on
load('CIRCLE_CLOSEDCELL_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(xlog,ylog)
plot(spx,spy)
title('Table tennis ball on closed cell foam')
xlabel('x position (m)')
ylabel('y position (m)')
legend({'Ball', 'Set Point'}, 'location', 'southeast')

subplot(3,2,4)
hold on
load('CIRCLE_CLOSEDCELL_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(xlog,ylog)
plot(spx,spy)
title('Golf ball on closed cell foam')
xlabel('x position (m)')
ylabel('y position (m)')
legend({'Ball', 'Set Point'}, 'location', 'southeast')

subplot(3,2,5)
hold on
load('CIRCLE_OPENCELL_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(xlog,ylog)
plot(spx,spy)
title('Table tennis ball on open cell foam')
xlabel('x position (m)')
ylabel('y position (m)')
legend({'Ball', 'Set Point'}, 'location', 'southeast')

subplot(3,2,6)
hold on
load('CIRCLE_OPENCELL_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(xlog,ylog)
plot(spx,spy)
title('Golf ball on open cell foam')
xlabel('x position (m)')
ylabel('y position (m)')
legend({'Ball', 'Set Point'}, 'location', 'southeast')