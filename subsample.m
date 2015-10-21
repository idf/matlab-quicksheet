[m, n] = size(heightmap);
sr = 4; % sample rate 

[Nx, Ny, Nz] = surfacenorm(heightmap);
Nx = Nx(1:sr:m, 1:sr:n)';
Ny = Ny(1:sr:m, 1:sr:n)';
Nz = Nz(1:sr:m, 1:sr:n)';

quiver3(1:sr:m, 1:sr:n, heightmap(1:sr:m, 1:sr:n)', Nx,...
        Ny, Nz);
