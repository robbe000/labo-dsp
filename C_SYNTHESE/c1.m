t = [1, 2, 1];
n = [1, -0.54, 0.76];

figure(1);
zplane(t, n);

figure(2);
freqz(t, n);

zero = [-1 -1];
pole = [0.26+0.34j 0.26-0.34j];

z = poly(zero);

p = poly(pole);