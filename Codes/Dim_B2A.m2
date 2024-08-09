-- Create a ring
R = QQ[X1X2X3,X1X2H12,X1X2,X2X3,H11X3,X1H12,L1,X2,X3,H11,H12,r1,r2,C_1..C_15]  

-- I is the ideal of the QCFs
I = ideal(
(((1-L1)+(((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * (((1 - 2 * ((X1H12)/3)))))+(((L1 * r1) * (1-r1) * 1) * ((((X2)/3))+(((X2)/3))))+(((L1 * r1) * (r1 * 1 + 0)) * (((1 - 2 * ((H11X3)/3))))))*((1-r2))+((1-L1)+(((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * (((1 - 2 * ((H12)/3)))))+(((L1 * r1) * (1-r1) * 1) * ((((X1X2)/3))+(((X1X2)/3))))+(((L1 * r1) * (r1 * 1 + 0)) * (((1 - 2 * ((H11X3)/3))))))*(r2))-C_1,
(((((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * ((((X1H12)/3))))+(((L1 * r1) * (1-r1) * 1) * (((1 - 2 * ((X2)/3)))+(((X2)/3))))+(((L1 * r1) * (r1 * 1 + 0)) * ((((H11X3)/3)))))*((1-r2))+((((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * ((((H12)/3))))+(((L1 * r1) * (1-r1) * 1) * (((1 - 2 * ((X1X2)/3)))+(((X1X2)/3))))+(((L1 * r1) * (r1 * 1 + 0)) * ((((H11X3)/3)))))*(r2))-C_2,
(((((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * ((((X1H12)/3))))+(((L1 * r1) * (1-r1) * 1) * ((((X2)/3))+((1 - 2 * ((X2)/3)))))+(((L1 * r1) * (r1 * 1 + 0)) * ((((H11X3)/3)))))*((1-r2))+((((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * ((((H12)/3))))+(((L1 * r1) * (1-r1) * 1) * ((((X1X2)/3))+((1 - 2 * ((X1X2)/3)))))+(((L1 * r1) * (r1 * 1 + 0)) * ((((H11X3)/3)))))*(r2))-C_3,
(((((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * ((((X1H12)/3))))+(((L1 * r1) * (1-r1) * 1) * (((1 - 2 * ((X2X3)/3)))+(((X2X3)/3))))+(((L1 * r1) * (r1 * 1 + 0)) * ((((H11)/3)))))*((1-r2))+((((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * ((((H12)/3))))+(((L1 * r1) * (1-r1) * 1) * (((1 - 2 * ((X1X2X3)/3)))+(((X1X2X3)/3))))+(((L1 * r1) * (r1 * 1 + 0)) * ((((H11)/3)))))*(r2))-C_5,
(((((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * ((((X1H12)/3))))+(((L1 * r1) * (1-r1) * 1) * ((((X2X3)/3))+((1 - 2 * ((X2X3)/3)))))+(((L1 * r1) * (r1 * 1 + 0)) * ((((H11)/3)))))*((1-r2))+((((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * ((((H12)/3))))+(((L1 * r1) * (1-r1) * 1) * ((((X1X2X3)/3))+((1 - 2 * ((X1X2X3)/3)))))+(((L1 * r1) * (r1 * 1 + 0)) * ((((H11)/3)))))*(r2))-C_6,
((((1 - 2 * ((X2)/3)))*((1-r1))+(((X3)/3))*(r1))*((1-r2))+(((1 - 2 * ((X1X2)/3)))*((1-r1))+(((X3)/3))*(r1))*(r2))-C_13,
(((((X2)/3))*((1-r1))+(((X3)/3))*(r1))*((1-r2))+((((X1X2)/3))*((1-r1))+(((X3)/3))*(r1))*(r2))-C_14,
((1-L1)+(((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * (((1 - 2 * ((X1X2H12)/3)))))+(((L1 * r1) * (1-r1) * 1) * ((((X3)/3))+(((X3)/3))))+(((L1 * r1) * (r1 * 1 + 0)) * (((1 - 2 * ((H11)/3))))))-C_7,
((((1 - 2 * ((X2)/3)))*((1-r1))+(((X3)/3))*(r1))*((1-r2))+(((1 - 2 * ((X1X2)/3)))*((1-r1))+(((X3)/3))*(r1))*(r2))-C_10,
(((((X2)/3))*((1-r1))+((1 - 2 * ((X3)/3)))*(r1))*((1-r2))+((((X1X2)/3))*((1-r1))+((1 - 2 * ((X3)/3)))*(r1))*(r2))-C_12,
((((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * ((((X1X2H12)/3))))+(((L1 * r1) * (1-r1) * 1) * ((((X3)/3))+((1 - 2 * ((X3)/3)))))+(((L1 * r1) * (r1 * 1 + 0)) * ((((H11)/3)))))-C_9,
((((((X2)/3))*((1-r1))+(1-2*((X3)/3)))*(r1))*((1-r2))+((((X1X2)/3))*((1-r1))+((1-2*((X3)/3)))*(r1))*(r2))-C_15,
((((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * ((((X1X2H12)/3))))+(((L1 * r1) * (1-r1) * 1) * (((1 - 2 * ((X3)/3)))+(((X3)/3))))+(((L1 * r1) * (r1 * 1 + 0)) * ((((H11)/3)))))-C_8,
(((1-L1)+(((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * (((1 - 2 * ((X1H12)/3)))))+(((L1 * r1) * (1-r1) * 1) * ((((X2X3)/3))+(((X2X3)/3))))+(((L1 * r1) * (r1 * 1 + 0)) * (((1 - 2 * ((H11)/3))))))*((1-r2))+((1-L1)+(((L1 * (1-r1)) * ((1-r1) * 1 + 0)) * (((1 - 2 * ((H12)/3)))))+(((L1 * r1) * (1-r1) * 1) * ((((X1X2X3)/3))+(((X1X2X3)/3))))+(((L1 * r1) * (r1 * 1 + 0)) * (((1 - 2 * ((H11)/3))))))*(r2))-C_4,
((((X2)/3)*((1-r1))+(((X3)/3))*(r1))*((1-r2))+((((X1X2)/3))*((1-r1))+(((X3)/3))*(r1))*(r2))-C_11)

-- Eliminate the CF parameters
J = eliminate (I, {X1X2X3,X1X2H12,X1X2,X2X3,H11X3,X1H12,L1,X2,X3,H11,H12,r1,r2}) 

-- Create a new ring compute right dimension of the elimination ideal.
-- Substitute the ideal into a ring not having the eliminated parameters.
-- Compute the dimension of the elimination ideal.
S = QQ[C_1..C_15]
H = sub(J, S)
dim H 