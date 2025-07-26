% Project I: Solve and Plot a Quadratic Equation
clc;
clear all;
close all;
% Coefficients
a = 1;
b = -3;
c = 2;

% Solve the quadratic equation using the quadratic formula
discriminant = b^2 - 4*a*c;
root1 = (-b + sqrt(discriminant)) / (2*a);
root2 = (-b - sqrt(discriminant)) / (2*a);

% Display roots
fprintf('The roots of the equation are: %.2f and %.2f\n', root1, root2);

% Plot the quadratic function
x = linspace(root2 - 2, root1 + 2, 100);
y = a*x.^2 + b*x + c;

plot(x, y, 'b', 'LineWidth', 2);
hold on;

% Plot the roots
plot(root1, 0, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
plot(root2, 0, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');

% Labels and grid
xlabel('x-axis');
ylabel('y-axis');
title('Quadratic Equation Plot');
grid on;

legend('Quadratic Curve', 'Roots');
