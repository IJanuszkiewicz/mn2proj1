function [a,b] = vecGetVectors(maxPossible,accuracyRatio,accuracy)
% Zadanie R
% Igor Januszkiewicz
% Total minipoints score: 824.4
% Function creates two vectors for bisection method. It uses sum of
% geometric series with accuracy being first term, accuracyRatio being
% common ratio, maxPossible is maximum possible value of in vector.

% calculating size of vectors
N = log((maxPossible*(accuracyRatio - 1))/accuracy + 1)/log(accuracyRatio);
N = floor(N);

% constructing the vectors
b = cumsum(accuracy*cumprod([1 ones(1,N)*accuracyRatio]));
b = [flip(-b(1:end - 1)) 0 b];
a = flip(-b);

end % function