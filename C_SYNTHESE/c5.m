order = 8;
cutoff_f = 300;
rippel_pass = 0.5;
cut_att = 50;
sample_f = 4000;

wn = cutoff_f/sample_f;

f = fir1(order, wn);

figure(1);
freqz(f);

figure(2);
zplane(f);