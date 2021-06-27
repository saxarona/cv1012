function x_r = falsepos(x_l, x_u, x_r, treshold)
    f_l = f(x_l);
    error = 1;
    
    while error > treshold
        x_old = x_r;
        x_r = x_u - (f(x_u)*(x_l - x_u)) / (f(x_l)-f(x_u));  %x_r = (x_l + x_u) / 2;
        f_r = f(x_r);
        
        error = abs((x_old - x_r) / x_old);
        
        test = f_l * f_r;
        
        if test < 0
            x_u = x_r;
        elseif test > 0
            x_l = x_r;
            f_l = f_r;
        else
            error = 0;
        end
    end
end