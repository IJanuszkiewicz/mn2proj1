function r = vecNlin(f)
% Autor: Igor Januszkiewicz
% ...


accuracy = 1e-9;
accuracyRatio = 1.00005;
maxPossible = 1e18;

[a,b] = vecGetVectors(maxPossible,accuracyRatio,accuracy);

fa = f(a);
fb = f(b);
rootIndexes = imag(fa) == 0 & imag(fb) == 0 & sign(fa).*sign(fb) < 0;

r = vecBisec(a(rootIndexes), b(rootIndexes), f);

end % function