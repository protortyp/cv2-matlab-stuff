function [u,v] = getUandV2(K1_inv, K2_inv, T, x1)
    % in case two inverse Ks, a point x1
    % and the translation is given
    
    x = (inv(K2_inv) * (K1_inv * x1 * T)) / 4;
    u = x(1);
    v = x(2);
end
