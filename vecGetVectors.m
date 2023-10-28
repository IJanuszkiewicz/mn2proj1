function [a,b] = vecGetVectors(maxPossible,accuracyRatio, accuracy)
%VECGETVECTORS Summary of this function goes here
%   Detailed explanation goes here

N = log((maxPossible*(accuracyRatio - 1))/accuracy + 1)/log(accuracyRatio);
N = floor(N);

b = cumsum(accuracy*cumprod([1 ones(1,N)*accuracyRatio]));
b = [flip(-b(1:end - 1)) 0 b];
a = flip(-b);

end