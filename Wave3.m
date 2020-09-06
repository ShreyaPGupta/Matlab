rng default;
x = randn(1000,1);
P = randperm(length(x));
indices = P(1:10);
x(indices(1:5)) = 10;
x(indices(6:end)) = -10;
 
[c,l] = wavedec(x,2,'db3');
stdc = wnoisest(c,l,1:2)