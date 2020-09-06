[z,fs,nb]=wavread('Piano.wav'); 
bfil=fft(z); %fft of input signal
wn=[4000 8000]/(fs/2);   %bandpass
[b,a]=butter(6,wn);
fvtool(b,a);
f=filter(b,a,z);
afil=fft(f);
subplot(2,1,1);plot(real(bfil));
title('frequency respones of input signal');
xlabel('frequency');ylabel('magnitude');
subplot(2,1,2);plot(real(afil));
title('frequency respones of filtered signal');
xlabel('frequency');ylabel('magnitude');