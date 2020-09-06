clc;
clear all;
close all;
n=0:0.001:1;
x=sin(2*pi*1*n);
noise=sin(2*pi*400*n);
noisy_inp=noise+x;
plot(n,x)
figure;
plot(n,noisy_inp)
y=conv(noisy_inp,h);
figure;
plot(n,y(1:length(n)))

