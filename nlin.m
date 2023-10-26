function r = nlin(f, bisecf)
% Autor: Igor Januszkiewicz

if nargin < 2
    bisecf = @bisec;
end

a = 0;
b = 500*eps();
rSize = 50000;
r = zeros(rSize, 1);
rUsed = 0;
accuracyRatio = 1.00015;
maxPossible = 3024;

while  b < maxPossible
    if (imag(f(a)) == 0) && (imag(f(b)) == 0) && f(a)*f(b) < 0
        rUsed = rUsed + 1;
        r(rUsed) = bisecf(a,b,f);
        if rUsed == rSize
            break;
        end
    end

    if (imag(f(-a)) == 0) && (imag(f(-b)) == 0) && f(-a)*f(-b) <= 0
        rUsed = rUsed + 1;
        r(rUsed) = bisecf(-a,-b,f);
        if rUsed == rSize
            break;
        end
    end
    a = b;
    b = b*accuracyRatio;
end

r = r(1:rUsed);

if rUsed == 0
    r = [];
end

end % function
