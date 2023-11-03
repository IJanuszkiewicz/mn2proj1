function roots = vecBisec(a,b,f)
% Zadanie R
% Igor Januszkiewicz
% Total minipoints score: 824.4
% Function uses bisection method to find roots of function f on intervals
% between a and b.

maxIters = 100; % to prevent infinite loops

x = (a + b)/2; % calculating the mid point
roots = a*0; % prealocating roots vector for speed
knownRoots = 0;
i = 0;

while i < maxIters & ~isempty(x)
    % checking if the mid points are roots
    rootindexes = vecIsRoot(a,b,x);
    newroots = sum(rootindexes);
    roots(knownRoots + 1:knownRoots + newroots) = x(rootindexes);
    knownRoots = knownRoots + newroots;

    % deleting roots from vectors
    rootindexes = ~rootindexes;
    a = a(rootindexes);
    b = b(rootindexes);
    x = x(rootindexes);

    % changing interval boundaries
    indexes = sign(f(a)) + sign(f(x)) ~= 0;
    a(indexes) = x(indexes);
    b(~indexes) = x(~indexes);

    x = (a + b)/2;
    i = i + 1;
end

end % function
