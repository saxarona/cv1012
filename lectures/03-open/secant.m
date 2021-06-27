function x_r = secant(x_0, x_1, threshold)
f_0 = f(x_0);
f_1 = f(x_1);
error = 1;

while error > threshold
    % Calculate tomorrow's value using today and yesterday's
    x_r = x_1 - f_1 * (x_0 - x_1) / (f_0 - f_1);
    
    % Calculate the error
    error = abs((x_r - x_1)/ x_r);
    
    x_0 = x_1; % Tomorrow, yesterday will be one day before yesterday
    x_1 = x_r; % Tomorrow, today will be yesterday
    
    f_0 = f(x_0); % Calculation of the new day before yesterday
    f_1 = f(x_1); % Calculation of the new yesterday
end