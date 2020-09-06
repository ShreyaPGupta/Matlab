load ex4mwden

%  Set the de-noising method parameters. 
level = 5;
wname = 'sym4';
tptr  = 'sqtwolog';
sorh  = 's';

% Set the PCA parameters to select the number of
% retained principal components automatically by
% Kaiser's rule.

npc_app = 'kais';
npc_fin = 'kais';

% Perform multivariate de-noising.
[x_den, npc, nestco] = wmulden(x, level, wname, npc_app, ... 
                                   npc_fin, tptr, sorh);

% Display the original and de-noised signals. 
kp = 0;
for i = 1:4 
    subplot(4,3,kp+1), plot(x_orig(:,i)); 
    title(['Original signal ',num2str(i)])
    subplot(4,3,kp+2), plot(x(:,i)); 
    title(['Observed signal ',num2str(i)])
    subplot(4,3,kp+3), plot(x_den(:,i)); 
    title(['De-noised signal ',num2str(i)])
    kp = kp + 3;
end