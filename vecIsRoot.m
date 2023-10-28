function ind = vecIsRoot(x,f)
%VECISROOT Summary of this function goes here
%   Detailed explanation goes here
accuracy = 500*eps();

ind = sign(f(x - accuracy)).*sign(f(x + accuracy)) < 0;

end