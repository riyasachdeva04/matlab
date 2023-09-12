a = -5;
b = 0;
f = @(x) x*x-x-12;

tol = 0;
n = 100;

df = @(x) 2*x-1;
g = @(x) x-(f(x)/df(x));

x0 = (a+b)/2;

for i =1:n
    x1 = g(x0);

    if abs(x0-x1)<tol
        disp(x0)
        break
    end
    x0 = x1;
end
disp(x0)