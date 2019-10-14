%% Step tests
 

subplot(2,1,2)
hold on
load('INPUTDIST_HARDBOARD_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Step response of the golf ball')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')