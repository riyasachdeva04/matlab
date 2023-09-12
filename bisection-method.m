a = input('lower limit');
b = input('upper limit');

tol = input('tolerance');
n = input('iterations');

f = @(x) x*x-x-12;


if f(a)*f(b)>0
    disp('Root does not exist in this interval');
else

    for i=1:n
        c = (a+b)/2;
        if f(a)*f(c)<0
            b = c;
        else
            a = c;
        end
        
        if abs(a-b)<tol
            break
        end
    end
    disp(c);
end
