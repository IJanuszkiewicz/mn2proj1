a = 0;
accuracy = 500*eps();
b = realmax;

while 1
    while a + b - accuracy == a + b
        b = b/2;
    end
    a = a + 2*b;

    a = a*2;
end

a
