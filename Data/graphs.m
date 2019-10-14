%% Step tests
figure(1)
clf
subplot(2,2,1)
hold on
load('STEP_HARDBOARD_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Root locus controller with table tennis ball')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(2,2,2)
hold on
load('STEP_HARDBOARD_TT_MANUAL.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Manually tuned controller with table tennis ball')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(2,2,3)
hold on
load('STEP_HARDBOARD_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Root locus controller with golf ball')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(2,2,4)
hold on
load('STEP_HARDBOARD_GOLF_MANUALV2.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Manually tuned controller with golf ball')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

%% Input disturbances
figure(2)
clf
subplot(1,2,1)
hold on
load('INPUTDIST_HARDBOARD_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Input disturbance test of the root locus controller')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(1,2,2)
hold on
load('INPUTDIST_HARDBOARD_TT_MANUAL.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Input disturbance of the manually tuned controller')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

%% Output disturbance
figure(3)
clf
subplot(1,2,1)
hold on
load('OUTPUTDIST_HARDBOARD_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Output disturbance test of the root locus controller')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(1,2,2)
hold on
load('OUTPUTDIST_HARDBOARD_TT_MANUAL.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Output disturbance test of the manually tuned controller')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')
%% plant modifications
figure(1)
clf
subplot(3,2,1)
hold on
load('STEP_HARDBOARD_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Table tennis ball on the hardboard plate')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(3,2,2)
hold on
load('STEP_HARDBOARD_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Golf ball on the hardboard plate')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(3,2,3)
hold on
load('STEP_CLOSEDCELL_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Table tennis ball on closed cell foam')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(3,2,4)
hold on
load('STEP_CLOSEDCELL_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Golf ball on closed cell foam')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(3,2,5)
hold on
load('STEP_OPENCELL_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Table tennis ball on open cell foam')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(3,2,6)
hold on
load('STEP_OPENCELL_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,xlog)
plot(t,ylog)
plot(t,spx)
title('Golf ball on open cell foam')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

%% angles
figure(1)
clf
subplot(2,2,1)
hold on
load('STEP_HARDBOARD_TT_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
% plot(t,xlog)
% plot(t,ylog)
% plot(t,spx)
plot(t,anglog)
title('Root locus controller with table tennis ball')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(2,2,2)
hold on
load('STEP_HARDBOARD_TT_MANUAL.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,anglog)
title('Manually tuned controller with table tennis ball')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(2,2,3)
hold on
load('STEP_HARDBOARD_GOLF_DESIGNED.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,anglog)
title('Root locus controller with golf ball')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'Set point'}, 'location', 'southeast')

subplot(2,2,4)
hold on
load('STEP_HARDBOARD_GOLF_MANUALV2.mat')
t=0:0.02:0.02*(length(xlog)-1);
plot(t,anglog)
title('Manually tuned controller with golf ball')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'', 'y', 'Set point'}, 'location', 'southeast')
