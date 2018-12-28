order = 8;
cutoff_f = 300;
rippel_pass = 0.5;
cut_att = 50;
sample_f = 4000;

wp = cutoff_f/sample_f;
[t, n] = ellip(order, rippel_pass, cut_att, wp);

figure(1);
freqz(t, n);

figure(2);
zplane(t, n);

z = roots(t);
p = roots(n);

figure(3);
impz(t, n);