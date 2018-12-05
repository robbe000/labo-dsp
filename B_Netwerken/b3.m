b = 1;
a = [1, -(0.5), 0.25];

%PZ plot van output bepalen
figure(1);
zplane(b, a);

%amplitude- en faseresponsie
figure(2);
freqz(b, a);

root = roots(a);

pol = poly(0.99);
figure(3);
freqz(b, pol);

pol = poly(0.9);
figure(4);
freqz(b, pol);

figure(5);
dimpulse(b, a);