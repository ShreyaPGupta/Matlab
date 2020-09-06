load sinsin;
Y = X + 18*randn(size(X));

[thr,sorh,keepapp] = ddencmp('den','wv',Y);
xd = wdencmp('gbl',Y,'sym4',2,thr,sorh,keepapp);
subplot(221)
imagesc(X); title('Original Image');
subplot(222);
imagesc(Y); title('Noisy Image');
subplot(223)
imagesc(xd); title('Denoised Image');