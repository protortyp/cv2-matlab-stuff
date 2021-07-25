function [x1,x2,x3] = findTriplets(X1s, X2s, X3s, R2, R3, T2, T3)
    for i = 1:length(X1s)
        x1 = cell2mat(X1s(i));
        x2 = cell2mat(X2s(i));
        x3 = cell2mat(X3s(i));

        x2_hat = hat(x2);
        x3_hat = hat(x3);

        M_p = [ x2_hat * R2 * x1, x2_hat * T2;
                x3_hat * R3 * x1, x3_hat * T3;
                ];
        r = rank(M_p);

        if r == 1 || r == 0
            fprintf('Found fitting triplet! at iteration %d\n', i);
            break
        end
    end
    
end
