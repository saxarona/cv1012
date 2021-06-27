function I = simpson13(X)
% Simpson 1/3 rule
% Receives as a parameter X a list of
% x-coordinates

n = length(X) - 1; % number of segments
a = X(1);
b = X(n + 1);
h = b - a;

sumbox = f(a);

% llenar la caja con los segmentos impares
% puntos pares
for i=2:2:n
    sumbox = sumbox + 4 * f(X(i));
end

% llenar la caja con los segmentos pares
% puntos impares
for j=3:2:n
    sumbox = sumbox + 2 * f(X(j));
end

sumbox = sumbox + f(b);

I = h * sumbox / (3 * n);

end