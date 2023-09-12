
tol = 10^-6;
n = 100;

f = @(x) x*x-2;

x0 = 2;

    for i=1:n
        x1 = f(x0);
        if abs(x1-x0) < tol
            break
        else
            x0 = x1;
        end
    
    end
    
    disp(x0);