b = 1;
a = [1, -(-1.45), 1.04];

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
