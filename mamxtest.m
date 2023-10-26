a = 0;
b = 1;
accuracy = 1000*eps();

while a + accuracy ~= a
    while a + b ~= a + b + accuracy
        b = b*2;

    end
    a = a + b/2;
    b = 1;
end
a