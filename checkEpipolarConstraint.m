function result = checkEpipolarConstraint(x1, x2, T, R)
    % check if the epipolar constraint holds
    result = x2.' * hat(T) * R * x1;
    if result == 0
        fprintf('Valid\n');
    else
        fprintf('Invalid\n');
    end
end