function D = CoalDimnumeric(c,d2,trials)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% Function to numerically compute the dimension of the image of          %%%%%%%%%%
%%%%%%%% a CF parametrization given parameters and CFs                          %%%%%%%%%%
%%%%%%%% Aviva Englander (akenglander@wisc.edu)                                 %%%%%%%%%%
%%%%%%%% Created: Dec. 2024                                                     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% trials - number of numerical tries
% c - equations of CFs    
% d - list of variables
    n_equations = length(c); % number of equations (or number of C's in the ideal)
    n_parameters = length(d2) - n_equations;% number of parameters in X's and R's
    a = n_parameters;
    b = n_equations;
    for t=1:trials
        JF = jacobian(c, d2);
        B = [zeros(b,a) -eye(b)];
        r = rand(length(d2));
        for i=1:length(d2)
            eval(strcat(sym2str(d2(i)),"=", num2str(r(i)),";"));
        end 
        rk = rank([eval(JF); B]); % nxn that varnish (Check)
        sz = size([eval(JF); B]); % The size function returns the dimensions of an array (we take the second entry)
        nl = null([eval(JF);B]); % number of overparametrizations (sz(2) - rk)
        R(t) = a - (sz(2) - rk);
    end
    "The dimension of the variety is " + string(mode(R))
end