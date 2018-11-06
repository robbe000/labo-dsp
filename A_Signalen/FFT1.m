clear all;

a = 2;
r = 4000;
p = 500;
n = 64;

%Aanpassing waarden voor twede deel van opdracht
%p = p+12.5;
%p = p+37.5;
%p = p+62.5;

fs = r;
t= 0:1/fs:(n-1)*1/fs; %0:dt:stoptime-dt
x= a*cos(2*pi*p*t);

figure(1);
%Origineel signaal afbeelden
subplot(2,1,1);
plot(t,x);
%Origineel gesampeld signaal
subplot(2,1,2);
stem(t,x);

%Fast Fourrier Transform uitvoeren op een gesampled signaal + weergeven
Xfft = fft(x);
figure(2);
subplot(2,1,1);
stem(abs(Xfft));

%Spectraalgrafiek
XfftS = fftshift(abs(Xfft));
subplot(2,1,2);
stem(XfftS);
