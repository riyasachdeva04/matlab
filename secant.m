clc
clear all

x0 = 0;
x1 = 5;

f = @(x) x*x-x-12;

n = 100;
tol = 1e-6;

for i=1:n
    x2 = x1 - ((x1-x0)/(f(x1)-f(x0))) * f(x1);

    if abs(x2-x1) < tol
        break
    end
    
    x0 = x1;
    x1 = x2;

end

disp(x2);