clc;
clear;
close all;

D = 1;

Nx = 21;
dx = 1/(Nx-1);

dt = 0.001;

T = 1;

Nt = T/dt;

r = D*dt/dx^2;

x = linspace(0,1,Nx);

c = zeros(Nx,1);

figure;
hold on;

for n = 1:Nt

    c_old = c;

    for i = 2:Nx-1

        c(i)=c_old(i)+r*( ...
            c_old(i+1)-2*c_old(i)+c_old(i-1));

    end

    c(1)=c(2);
    c(end)=c(end-1)+dx;

    t=n*dt;

    if abs(mod(t,0.1))<dt

        plot(x,c,'DisplayName',sprintf('%.1f s',t));

    end

end

xlabel('x');
ylabel('c');
title('Diffusion Equation');
legend;
grid on;