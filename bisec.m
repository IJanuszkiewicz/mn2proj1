function x = bisec(a,b,f)
% Autor: Igor Januszkiewicz
% bisection method
accuracy = 500*eps;
maxLoops = 1000;
 i = 0;
x = (a + b)/2;
while abs(b - a) > 2*accuracy && i < maxLoops
    if f(a)*f(x) >= 0
        a = x;
    else 
        b = x;
    end
    x = (a + b)/2;
     i = i + 1;
end

end % function
