load mtlb
smtlb = sgolayfilt(mtlb,3,41);

subplot(2,1,1)
plot(1:2000, mtlb(1:2000))
axis([0 2000 -4 4])
title('mtlb')
grid

subplot(2,1,2)
plot(1:2000,smtlb(1:2000))
axis([0 2000 -4 4])
title('smtlb')
grid