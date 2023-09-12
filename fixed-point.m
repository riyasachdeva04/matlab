clc

f = @(x) x^2-2;

a = input('lower limit');
b = input('upper limit');

x0 = (a+b)/2;

tol = input('tolerance');
n = input('iterations');

if f(a)*f(b)>0
    disp("Root does not exist");
else
    for i=1:n
        x1 = f(x0);
        if abs(x1-x0) < tol
            disp(x0)
            break
        else
            x0 = x1;
        end
    
    end
    
    disp(x0);
end
