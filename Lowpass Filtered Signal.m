b = fir1(48,[0.35 0.65]);



subplot(2,1,1)
plot(t,y)
title('Original Signal')
ys = ylim;

subplot(2,1,2)
plot(t,outlo)
title('Lowpass Filtered Signal')
xlabel('Time (s)')
ylim(ys) = fir1(48,[0.35 0.65]);
freqz(b,1,512)