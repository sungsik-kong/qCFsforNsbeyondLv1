needsPackage "NumericalImplicitization"
R = CC[x_1..x_12]
S = CC[t_1..t_3]

-- construct param of H_1
im = {
    t_1,
    t_1 * t_2,
    t_1 * t_2^2,
    t_1 * t_3,
    t_1 * t_2 * t_3,
    t_1 * t_2^2 * t_3,
    t_1 * t_2^3 * t_3,
    t_1 * t_3^2,
    t_1 * t_2 * t_3^2,
    t_1 * t_2^2 * t_3^2,
    t_1 * t_2^3 * t_3^2,
    t_1 * t_2^4 * t_3^2
}

phi = map(S, R, im)

-- the domain of the map is C^3
domain = ideal(0_S)

-- the dimension of pi(V) is
d = numericalImageDim(phi, domain)

-- the degree of pi(V) is 
deg = numericalImageDegree(phi, domain)