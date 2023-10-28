function [a,b,N] = getVectors(maxPossible,accuracyRatio, accuracy)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if nargin < 4
    accuracy = 500*eps();
end

N = log((maxPossible*(accuracyRatio - 1))/accuracy + 1)/log(accuracyRatio);
N = floor(N);
b = zeros(1,N);
val = accuracy;
toadd = accuracy;
iter = 1;

while val < maxPossible
    b(iter) = val;
    toadd = toadd*accuracyRatio;
    val = val + toadd;
    iter = iter + 1;
end
b = [flip(-b(1:end-1)) 0 b];
a = flip(-b);

end % function