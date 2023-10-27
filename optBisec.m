function x = optBisec(a,b,f)
% Autor: Igor Januszkiewicz
% bisection method
accuracy = 500*eps;
maxLoops = 100;
i = 0;
x = (a + b)/2;
fa = f(a);
fx = f(x);
while abs(b - a) > 2*accuracy && i < maxLoops
    if fa*fx >= 0
        a = x;
        fa = fx;
    else 
        b = x;
    end
    x = (a + b)/2;
    fx = f(x);
     i = i + 1;
end

end % function
