function [m,b] = getEpipolarLineEquation(T, R, p)
    assert(numberofelements(T) == 3);
    assert(numberofelements(R) == 9);
    assert(numberofelements(p) == 3);
    T_hat = hat(T);
    E = T_hat * R;

    % calculate line = E*p
    l = E * p;
   
    [m, b] = getMnBfromL(l)
end
