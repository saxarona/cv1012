function I = trapezoidal(X)
% the TRAPEZOIDAL function
% gets X which is a list of x-coordinates

n = length(X) - 1; % number of segments
a = X(1);
b = X(n + 1);
h = b - a;

sumbox = f(X(1));

for i=2:n
    sumbox = sumbox + 2 * f(X(i));
end

sumbox = sumbox + f(X(n+1));
I = h * sumbox / (2 * n);
end