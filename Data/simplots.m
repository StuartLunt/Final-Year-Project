figure(1)
clf
hold on
plot(xpos.signals.values,ypos.signals.values)
plot(setpointx.signals.values,setpointy.signals.values)
% plot(xpos.time,xpos.signals.values)
% plot(ypos.time,ypos.signals.values)
% plot(setpointx.time,setpointx.signals.values)
% plot(setpointy.time,setpointy.signals.values)
title('Simulated step and disturbance responses')
xlabel('Time (s)')
ylabel('Position (m)')
legend({'x', 'y', 'x set point', 'y set point'}, 'location', 'southeast')