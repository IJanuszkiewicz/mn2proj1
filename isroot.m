function b = isroot(fun, arg)
% Autor: Igor Januszkiewicz
% funkcja sprawdza czy funkcja ciągła fun zmienia znak w przedziale
% [arg - ACCURACY, arg + ACCURACY].

ACCURACY = 500 * eps();

if fun(arg + ACCURACY) * fun(arg - ACCURACY) <= 0
    b = 1;
else
    b = 0;
end

end % function

