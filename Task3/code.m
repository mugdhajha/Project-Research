clear; clc;

nu = 0.3;

N = 50;

r = linspace(0.5,1,N)';
h = r(2)-r(1);

A = zeros(N,N);
b = zeros(N,1);

A(1,1) = 1;
b(1) = 0;

for i = 2:N-1

    ri = r(i);

    A(i,i-1) = 1/h^2 - 1/(2*h*ri);

    A(i,i) = -2/h^2 - 1/ri^2;

    A(i,i+1) = 1/h^2 + 1/(2*h*ri);

end

A(N,N-1) = -(1-nu)/h;
A(N,N)   = (1-nu)/h + nu;

b(N) = -(1+nu)*(1-2*nu);

uFD = A\b;

plot(r,uFD,'LineWidth',2)
xlabel('r')
ylabel('u')
title('Finite Difference Solution')
grid on