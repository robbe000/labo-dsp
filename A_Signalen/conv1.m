samp = [0 0 0 1 1 1 1 1 1 0 0 0 ; 
        0 0 0 1 0 0 0 0 0 0 0 0 ;
        0 0 0 1 0 0 0 0 1 0 0 0 ; 
        0 0 0 1 1 1 1 1 1 0 0 0];
mask = [1/3 1/3 1/3];

for(i=1:1:4)
    figure(i);
    subplot(2, 1, 1);
    stem(samp(i,:));
    w = conv(samp(i,:), mask);
    subplot(2,1,2);
    stem(w);
end

samp2 = [0 0 0 0 0 1 1 1 -1 1 0 0 0 0 0 0 -1 -1 -1 1 -1 0 0 0 0 0];
mask = [0 1 1 1 -1 1 0];
mask = [0 1 -1 1 1 1 0];

figure(5);
subplot(2, 1, 1);
stem(samp2);
w = conv(samp2, mask);
subplot(2,1,2);
stem(w);