clc ;
x = input("Enter the values of x(n)");
h = input("Enter the values of h(n)");
X = fft2(x);
H = fft2(h);
Y = X.*H;
y = ifft(Y);
disp ( 'Circular Convolution Result y = ',y);
