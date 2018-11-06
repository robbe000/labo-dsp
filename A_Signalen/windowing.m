r = 8000;
p = 1000;
b = 62.5;
n = 64;
a = 625;
c = 250;
d = 125;

Rwindow = boxcar(n);
VHwindow = hanning(n);
Hwindow = hamming(n);

%figure(1);
%subplot(3,1,1);
%stem(Rwindow);
%subplot(3,1,2);
%stem(VHwindow);
%subplot(3,1,3);
%stem(Hwindow);

fs = r;
t= 0:1/fs:(n-1)*1/fs; %0:dt:stoptime-dt

%x = sin(2*pi*p*t);
%x = sin(2*pi*(p+a)*t);
%x = sin(2*pi*p*t) + 0.05 * sin(2*pi*(p+b)*t);
%x = sin(2*pi*p*t) + 0.05 * sin(2*pi*(p+c)*t);
%x = sin(2*pi*(p+d)*t) + 0.05 * sin(2*pi*(p+b)*t);
x = sin(2*pi*(p+d)*t) + 0.05 * sin(2*pi*(p+c)*t);

%Rechthoekig (tijd en frequentie)
figure(2);
subplot(3,1,1);
stem(Rwindow);
subplot(3,1,2);
stem(t, Rwindow*x);
subplot(3,1,3);
stem(fftshift(abs(fft(Rwindow*x))));

%Von Hann (tijd en frequentie)
figure(3);
subplot(3,1,1);
stem(VHwindow);
subplot(3,1,2);
stem(t, VHwindow*x);
subplot(3,1,3);
stem(fftshift(abs(fft(VHwindow*x))));

%Hamming (tijd en frequentie)
figure(4);
subplot(3,1,1);
stem(Hwindow);
subplot(3,1,2);
stem(t, Hwindow*x);
subplot(3,1,3);
stem(fftshift(abs(fft(Hwindow*x))));
