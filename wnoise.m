% Generate 2^10 samples of 'Heavy sine' (item 3). 
x = wnoise(3,10); 

% Generate 2^10 samples of 'Doppler' (item 4) and of
% noisy 'Doppler' with a square root of signal-to-noise
% ratio equal to 7. 
[x,noisyx] = wnoise(4,10,7);

% To introduce your own rand seed, a fourth 
% argument is allowed: 
init = 2055415866; 
[x,noisyx] = wnoise(4,10,7,init);

% Plot all the test functions. 
ind = linspace(0,1,2^10); 
for i = 1:6 
    x = wnoise(i,10); 
    subplot(6,1,i), plot(ind,x) 
end
