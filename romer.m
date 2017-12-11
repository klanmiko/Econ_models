clc;
clear;
close all;
t = linspace (0, 30);
A = linspace(0, 30);
A(1) = 2.5;
K = 20;
L = 10;
l = 0.3;
z = 0.4;
Y = linspace(0, 30);
Y(1) = A(1) * K^(1/3) * L ^ (2/3);
for i = 2:100
  A(i) = A(i - 1) + z * A(i - 1) * l * L;
  Y(i) = A(i) * K^(1/3) * L ^ (2/3);
end
plot(t, Y);
hold on;
plot(t, A);