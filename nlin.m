function r = nlin(f, bisecf)
% Autor: Igor Januszkiewicz

if nargin < 2
    bisecf = @bisec;
end

accuracy = 500*eps();
a = 0;
b = accuracy;
rSize = 50000;
r = zeros(rSize, 1);
rUsed = 0;
accuracyRatio = 1.00015;
maxPossible = 3024;

while  b < maxPossible
    if isreal(f(a)) && isreal(f(b)) && f(a)*f(b) < 0
        rUsed = rUsed + 1;
        r(rUsed) = bisecf(a,b,f);
        if rUsed == rSize
            break;
        end
    end

    if isreal(f(-a)) && isreal(f(-b)) && f(-a)*f(-b) < 0
        rUsed = rUsed + 1;
        r(rUsed) = bisecf(-a,-b,f);
        if rUsed == rSize
            break;
        end
    end
    a = b;
    accuracy = accuracy*accuracyRatio;
    b = b + accuracy;
end

r = r(1:rUsed);

if rUsed == 0
    r = [];
end

end % function
