function F = Quater_Product(q)
    F = [(q(4)*eye(3)-cross_matrix(q(1:3))) q(1:3);-q(1:3)' q(4)];
end