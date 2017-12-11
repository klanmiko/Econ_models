clc;
clear;
close all;
t = linspace (0, 30);
s = 0.4;
d = 0.5;
A = 2.5;
K = linspace(0, 30);
K(1) = 10;
L = 10;
Y = linspace(0, 30);
Y(1) = A * K(1)^(1/3) * L ^ (2/3);
for i = 2:100
  K(i) = K(i - 1) + s * Y(i - 1) - d * K(i - 1);
  K(i) = max(K(i), 0);
  Y(i) = A * K(i)^(1/3) * L ^ (2/3);
end
plot(t, Y);
hold on;
plot(t, K);

