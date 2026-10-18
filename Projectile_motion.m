clc;
clear;
close all;

u = input("Enter initial velocity (m/s): ");
theta = input("Enter launch angle (degrees): ");
g = 9.81;
theta_rad = deg2rad(theta)
T=2*u*sin(theta_rad)/g
t=linspace(0,T,100)
x= u*cos(theta_rad).*t
y=u*sin(theta_rad).*t-0.5*g*t.^2

figure;
plot(x,y,'LineWidth',2);
grid on;

xlabel('Horizontal Distance (m)');
ylabel('Vertical Distance (m)');

fprintf('Flight time: %.2f seconds\n', T);
fprintf('Maximum height: %.2f metres\n', max(y));
fprintf('Range: %.2f metres\n', max(x));
