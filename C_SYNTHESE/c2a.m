[t, n] = butter(3, 1/(2*pi));

figure(1);
zplane(t, n);

figure(2);
freqz(t, n);