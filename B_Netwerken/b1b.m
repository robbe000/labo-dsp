r = 8000;
p = 1000;
b = 1;
n = 200;
a = 625;
c = 250;
d = 125;

fs = r;
t= 0:1/fs:(n-1)*1/fs; %0:dt:stoptime-d
input = sin(2*pi*p*t);

%In venster 1 de input waarden weergeven
figure(1);
subplot(2,1,1);
plot(t, input);

%Ruis toevoegen aan input
input = sin(2*pi*p*t)+rand(1,200);
subplot(2,1,2);
plot(t, input);

%In venster 2 de output van de iir filter weergeven
figure(2);
a= [1 -0.1];
output = filter(b,a,input);
subplot(6,1,1);
plot(output);

    %PZ plot van output bepalen
    figure(3);
    zplane(b, a);
    
    %amplitude- en faseresponsie
    figure(8);
    freqz(b, a);

figure(2);
a= [1 -0.5];
output = filter(b,a,input);
subplot(6,1,2);
plot(output);

    %PZ plot van output bepalen
    figure(4);
    zplane(b, a);
    
    %amplitude- en faseresponsie
    figure(9);
    freqz(b, a);

figure(2);

a= [1 -0.9];
output = filter(b,a,input);
subplot(6,1,3);
plot(output);

    %PZ plot van output bepalen
    figure(5);
    zplane(b, a);
    
    %amplitude- en faseresponsie
    figure(10);
    freqz(b, a);

figure(2);

a= [1 -1.0];
output = filter(b,a,input);
subplot(6,1,4);
plot(output);

    %PZ plot van output bepalen
    figure(6);
    zplane(b, a);
    
    %amplitude- en faseresponsie
    figure(11);
    freqz(b, a);

figure(2);

a= [1 -1.1];
output = filter(b,a,input);
subplot(6,1,5);
plot(output);

    %PZ plot van output bepalen
    figure(7);
    zplane(b, a);
    
    %amplitude- en faseresponsie
    figure(12);
    freqz(b, a);
