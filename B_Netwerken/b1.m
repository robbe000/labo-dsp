input = ones(200, 1);
b=1;

figure(1);
a= [1 -0.1];
output = filter(b,a,input);
subplot(5,1,1);
stem(output);

a= [1 -0.5];
output = filter(b,a,input);
subplot(5,1,2);
stem(output);

a= [1 -0.9];
output = filter(b,a,input);
subplot(5,1,3);
stem(output);

a= [1 -1];
output = filter(b,a,input);
subplot(5,1,4);
stem(output);

a= [1 -1.1];
output = filter(b,a,input);
subplot(5,1,5);
stem(output);