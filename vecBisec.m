function roots = vecBisec(a,b,f)
%VECBISEC Summary of this function goes here
%   Detailed explanation goes here

accuracy = 500*eps();
x = (a + b)/2;
roots = a*0;
knownRoots = 0;
maxIters = 1000;
i = 0;
while i < maxIters && ~isempty(x)
    rootindexes = b - a < 2*accuracy;
    newroots = sum(rootindexes);
    roots(knownRoots + 1:knownRoots + newroots) = x(rootindexes);
    knownRoots = knownRoots + newroots;

    rootindexes = ~rootindexes;
    a = a(rootindexes);
    b = b(rootindexes);
    x = x(rootindexes);

    indexes = sign(f(a)) + sign(f(x)) ~= 0;
    a(indexes) = x(indexes);
    b(~indexes) = x(~indexes);

    x = (a + b)/2;

    i = i + 1;
end

roots(knownRoots + 1:knownRoots + length(x)) = x;

end % function