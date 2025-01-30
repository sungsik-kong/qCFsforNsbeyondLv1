
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% Function to compute the dimension of the image of a CF parametrization %%%%%%%%%%
%%%%%%%% given parameters and CFs                                               %%%%%%%%%%
%%%%%%%% Ikenna Nometa (inometa@hawaii.edu)                                     %%%%%%%%%%
%%%%%%%% Created: Oct. 2024 @ICERM                                              %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function D = CoalDim(c, d)
    n_equations = length(c); % number of equations (or number of C's in the ideal)
    n_parameters = length(d) - n_equations;% number of parameters in X's and R's
    a = n_parameters;
    b = n_equations;
    JF = jacobian(c, d);
    B = [zeros(b,a) -eye(b)];
    rk = rank([JF; B]); % nxn that varnish (Check)
    sz = size([JF; B]); % The size function returns the dimensions of an array (we take the second entry)
    nl = null([JF;B]); % number of overparametrizations
    "The dimension of the variety is " + string(a - (sz(2) - rk))
end
