function heightmap = integrate_naive(Nx, Ny)
    [p, q] = size(Nx);
    heightmap = zeros(p, q);
    % plot, x right, y down. 
    for a = 1:p
        if a >= 2
            heightmap(a, 1) = heightmap(a-1, 1)+Ny(a, 1);  % it is Ny, due to Plot coordinates
        end
        for c = 2:q
            heightmap(a, c) = heightmap(a, c-1)+Nx(a, c-1);  % it is Nx, due to Plot coordinates
        end
    end
end

% consistent with integrate_horn2

