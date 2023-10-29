function r = vecNlin(f,accuracy)
% Autor: Igor Januszkiewicz
% ...

if nargin < 2
    accuracy = 500*eps();
end

accuracyRatio = 1.00005;
maxPossible = 1e20;

[a,b] = vecGetVectors(maxPossible,accuracyRatio,accuracy);

fa = f(a);
fb = f(b);
rootIndexes = imag(fa) == 0 & imag(fb) == 0 & ...
    sign(fa).*sign(fb) < 0;

r = vecBisec(a(rootIndexes), b(rootIndexes), f);

end % function