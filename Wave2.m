load noisbloc;
L = 5;
swc = swt(noisbloc,L,'db1');
swcnew = swc;
ThreshSL = mean(wthrmngr('sw1ddenoLVL','sqtwolog',swc,'sln'));

for jj = 1:L
swcnew(jj,:) = wthresh(swc(jj,:),'h',ThreshSL);
plot(noisbloc,swc);
end