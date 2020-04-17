function x_r = newtonraphson(x_0, threshold)

syms x;
sym_f = exp(-x) - x;
sym_fprime = diff(sym_f);
sym_result = (sym_f / sym_fprime);

x_r = f(x_0);
error = 1;

while error > threshold
    x_r = x_0 - vpa(subs(sym_result, x, x_0));
    error = abs((x_r - x_0)/ x_r);
    x_0 = x_r;
end