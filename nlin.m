function r = nlin(f)
% Zadanie R
% Igor Januszkiewicz
% Total minipoints score: 824.4
% Function searches for real roots of function f in range
% (-maxPossible,maxPossible) using bisection method.

startingGap = 1e-9;
accuracyRatio = 1.00005;
maxPossible = 1e18;

[a,b] = vecGetVectors(maxPossible,accuracyRatio,startingGap);

% calcucatiing values for speed
fa = f(a);
fb = f(b);

% finding indexes with roots
rootIndexes = imag(fa) == 0 & imag(fb) == 0 & sign(fa).*sign(fb) < 0;

% using bisection method
r = vecBisec(a(rootIndexes),b(rootIndexes),f);

end % function
