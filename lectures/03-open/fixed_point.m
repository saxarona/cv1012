function x_r = fixed_point(x_0, threshold)
x_r = f(x_0);
error = 1;

while error > threshold
    x_0 = x_r
    x_r = f(x_r)
    error = abs((x_r - x_0)/ x_r)
end