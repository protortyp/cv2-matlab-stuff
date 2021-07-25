function checkEpipolarConstraints(x1s, x2s, T, R)
    % check if the epipolar constraint holds
    format rational
    for i = 1:length(x1s)
        x1 = [cell2mat(x1s(i)); 1]; % make homog
        x2 = [cell2mat(x2s(i)); 1]; % make homog
        r = x2.' * hat(T) * R * x1;
        if r < 0.0001 && r >= -0.0001
            fprintf('i = %d: Valid\n', i);
        else
            fprintf('i = %d: Invalid\n', i);
        end
    end
end