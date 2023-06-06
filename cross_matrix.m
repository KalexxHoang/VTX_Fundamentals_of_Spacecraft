function cross_X = cross_matrix(X)
    x1 = X(1);
    x2 = X(2);
    x3 = X(3);
    
    cross_X = [0 -x3 x2; ...
               x3 0 -x1; ...
               -x2 x1 0];
end