clear all;

a = 5;
b = 10;
p = 1000;
q = 1500;
r = 10000;
n = 32;
bits = 1;

fs = r;
dt = 1/fs;

for y=1:1:50
    i=1;
    delta = 2*(a+b)/2^bits;
    for t=0:dt:(32*dt)
        xf(i) = delta * floor((a*sin(2*pi*p*t)+b*sin(2*pi*q*t))/delta);
        x(i) = a*sin(2*pi*p*t)+b*sin(2*pi*q*t);
        xr(i) = x(i) - xf(i);
        i = i+1;
    end

    rms_bits(y) = rms(xr);
    bits = bits + 1;
end

subplot(1,1,1);
plot(rms_bits);



%subplot(3,1,1);
%plot(x);
%title('Origineel signaal');
%subplot(3,1,2);
%plot(xf);
%title('Gequantiseerd signaal');
%subplot(3,1,3);
%plot(xr);
%title('Quantisatie ruis');

