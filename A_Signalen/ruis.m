n = 64;
fs = 1000;

t= 0:1/fs:(n-1)*1/fs; %0:dt:stoptime-dt
x = 100*sin(2*pi*100*t) + 2*sin(2*pi*164.25*t) + rand();

n=255;
t= 0:1/fs:(n-1)*1/fs; %0:dt:stoptime-d
x = [zeros(length(x)-512), x];

%inputsignaal en psd weergeven
figure(1);
subplot(2,1,1);
stem(x);
subplot(2,1,2);
stem(log(x));