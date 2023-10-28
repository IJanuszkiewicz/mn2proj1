function r = vecNlin(f,accuracy)
% Autor: Igor Januszkiewicz
% ...

if nargin < 2
    accuracy = 500*eps();
end

accuracyRatio = 1.00015;
maxPossible = 3024;

[a,b] = vecGetVectors(maxPossible,accuracyRatio,accuracy);

rootIndexes = imag(f(a)) == 0 & imag(f(b)) == 0 & ...
    sign(f(a)).*sign(f(b)) < 0;

r = vecBisec(a(rootIndexes), b(rootIndexes), f);

end % function