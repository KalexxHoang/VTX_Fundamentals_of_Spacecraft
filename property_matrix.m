function proper_q = property_matrix(q)
    q1 = q(1);
    q2 = q(2);
    q3 = q(3);
    q4 = q(4);
    
    proper_q = [q4 -q3 q2; ...
                q3 q4 -q1; ...
                -q2 q1 q4; ...
                -q1 -q2 -q3];
end