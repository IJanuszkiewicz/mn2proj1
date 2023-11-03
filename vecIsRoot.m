function ind = vecIsRoot(a,b,x)
% Zadanie R
% Igor Januszkiewicz
% Total minipoints score: 824.4
% Function decides which elements of x are single roots
% a and b are boundaries of intervals from bisection method. Function
% assumes that sign(f(a)) ~= sing(f(b)).

accuracy = 500*eps();

ind = logical(a*0); % prealocating for speed

% checking if x satisfies conditions of being a root
smallInd = abs(x) < 1;
ind(smallInd) = b(smallInd) - a(smallInd) < 2*accuracy;
bigInd = ~smallInd;
ind(bigInd) = b(bigInd) - a(bigInd) < 2*accuracy*abs(x(bigInd));

end % function
