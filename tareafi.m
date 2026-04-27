clc;
clear;

disp("=== Serie de Fibonacci ===");

n = input("Ingrese la cantidad de términos: ");

fprintf("\nPrimeros %d términos de Fibonacci:\n", n);

a = 0;
b = 1;

for i = 1:n
    fprintf("%d ", a);
    temp = a + b;
    a = b;
    b = temp;
end

fprintf("\n\nRazón Áurea Aproximada:\n");
phi = (1 + sqrt(5))/2;
disp(phi);

% Comparación con cocientes Fibonacci
disp("Cocientes entre términos consecutivos:");

a = 0;
b = 1;

for i = 2:n
    temp = a + b;
    if a != 0
        fprintf("%f\n", b/a);
    end
    a = b;
    b = temp;
end