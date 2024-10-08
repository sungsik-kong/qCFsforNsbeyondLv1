% Declare variables
syms R1 R2 X12 X2 X3 X6 X7 X9 C_1 C_2 C_3 C_4 C_5 C_6 C_7 C_8 C_9 C_10 C_11 C_12 C_13 C_14 C_15 

% matrix of generating polynomials
F=[((1-X6)+(((X6*R1)*(R1*1-0+0))*((1-2*(X3*X2)/3)))+(((X6*(1-R1))*R1*1-0)*((((X12*X9)/3)*R2+(X12/3)*(1-R2))+(((X12*X9)/3)*R2+(X12/3)*(1-R2))))+(((X6*(1-R1))*((1-R1)*1-0+0))*(((1-2*X7/3)*R2+(1-2*(X9*X7)/3)*(1-R2)))))-C_1,
((((X6*R1)*(R1*1-0+0))*(((X3*X2)/3)))+(((X6*(1-R1))*R1*1-0)*((((X12*X9)/3)*R2+(X12/3)*(1-R2))+((1-2*(X12*X9)/3)*R2+(1-2*X12/3)*(1-R2))))+(((X6*(1-R1))*((1-R1)*1-0+0))*(((X7/3)*R2+((X9*X7)/3)*(1-R2)))))-C_2,
((((X6*R1)*(R1*1-0+0))*(((X3*X2)/3)))+(((X6*(1-R1))*R1*1-0)*(((1-2*(X12*X9)/3)*R2+(1-2*X12/3)*(1-R2))+(((X12*X9)/3)*R2+(X12/3)*(1-R2))))+(((X6*(1-R1))*((1-R1)*1-0+0))*(((X7/3)*R2+((X9*X7)/3)*(1-R2)))))-C_3,
((1-X6)+(((X6*R1)*(R1*1-0+0))*((1-2*X2/3)))+(((X6*(1-R1))*R1*1-0)*((((X12*X9*X3)/3)*R2+((X12*X3)/3)*(1-R2))+(((X12*X9*X3)/3)*R2+((X12*X3)/3)*(1-R2))))+(((X6*(1-R1))*((1-R1)*1-0+0))*(((1-2*X7/3)*R2+(1-2*(X9*X7)/3)*(1-R2)))))-C_4,
((((X6*R1)*(R1*1-0+0))*((X2/3)))+(((X6*(1-R1))*R1*1-0)*((((X12*X9*X3)/3)*R2+((X12*X3)/3)*(1-R2))+((1-2*(X12*X9*X3)/3)*R2+(1-2*(X12*X3)/3)*(1-R2))))+(((X6*(1-R1))*((1-R1)*1-0+0))*(((X7/3)*R2+((X9*X7)/3)*(1-R2)))))-C_5,
((((X6*R1)*(R1*1-0+0))*((X2/3)))+(((X6*(1-R1))*R1*1-0)*(((1-2*(X12*X9*X3)/3)*R2+(1-2*(X12*X3)/3)*(1-R2))+(((X12*X9*X3)/3)*R2+((X12*X3)/3)*(1-R2))))+(((X6*(1-R1))*((1-R1)*1-0+0))*(((X7/3)*R2+((X9*X7)/3)*(1-R2)))))-C_6,
((1-X6)+(((X6*R1)*(R1*1-0+0))*((1-2*X2/3)))+(((X6*(1-R1))*R1*1-0)*((X3/3)+(X3/3)))+(((X6*(1-R1))*((1-R1)*1-0+0))*((1-2*(X12*X9*X7)/3))))-C_7,
((((X6*R1)*(R1*1-0+0))*((X2/3)))+(((X6*(1-R1))*R1*1-0)*((X3/3)+(1-2*X3/3)))+(((X6*(1-R1))*((1-R1)*1-0+0))*(((X12*X9*X7)/3))))-C_8,
((((X6*R1)*(R1*1-0+0))*((X2/3)))+(((X6*(1-R1))*R1*1-0)*((1-2*X3/3)+(X3/3)))+(((X6*(1-R1))*((1-R1)*1-0+0))*(((X12*X9*X7)/3))))-C_9,
((X3/3)*R1+((1-2*(X12*X9)/3)*R2+(1-2*X12/3)*(1-R2))*(1-R1))-C_10,
((X3/3)*R1+(((X12*X9)/3)*R2+(X12/3)*(1-R2))*(1-R1))-C_11,
((1-2*X3/3)*R1+(((X12*X9)/3)*R2+(X12/3)*(1-R2))*(1-R1))-C_12,
((X3/3)*R1+((1-2*(X12*X9)/3)*R2+(1-2*X12/3)*(1-R2))*(1-R1))-C_13,
((X3/3)*R1+(((X12*X9)/3)*R2+(X12/3)*(1-R2))*(1-R1))-C_14,
((1-2*X3/3)*R1+(((X12*X9)/3)*R2+(X12/3)*(1-R2))*(1-R1))-C_15];

% matrix of generating polynomials

% Array of all variables
V=[R1 R2 X12 X2 X3 X6 X7 X9 C_1 C_2 C_3 C_4 C_5 C_6 C_7 C_8 C_9 C_10 C_11 C_12 C_13 C_14 C_15]

% Compute dimension
CoalDim(F,V)
