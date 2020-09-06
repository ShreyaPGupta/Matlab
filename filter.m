clc;
clear all;
close all; 

y1 = (y + r);
y2 = zeros(m,n);
for i = 2:(n-1)
    y2(i) = (y1(i-1) + y1(i) + y1(i+1))/3;
end
subplot(411);
plot(t,y); title('input signal');
subplot(412);
plot(t,r); title('random signal');
subplot(413);
plot(t,y1); title('noise added signal');
subplot(414);
plot(t,y2); title('smoothed signal');