clear all;

a = 5;
b = 10;
p = 1000;
q = 1500;
r = 10000;
n = 32;

fs = r;
t=0:1/fs:(n-1)*1/fs; %0:dt:stoptime-dt
t1=0:1/(fs*10):(n-1)*1/fs; %0:dt:stoptime-dt
x = a*sin(2*pi*p*t)+b*sin(2*pi*q*t);
x1 = a*sin(2*pi*p*t1)+b*sin(2*pi*q*t1);

subplot(2,1,1);
plot(t1,x1);
subplot(2,1,2);
stem(t, x);