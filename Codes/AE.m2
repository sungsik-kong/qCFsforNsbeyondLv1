R= QQ[L1,G1,G2,H11,H12,H21,H22,X_1..X_3,C_1..C_9]
f1 = (1-L1)+L1*G1^2*((1-X_3-H11)+(X_3+H11)*(1/3))+L1*(1-G1)^2*((1-H12)+H12*(G2*(1/3)+(1-G2)*((1-X_1)+X_1*(1/3))))+2*L1(1-G1)*G1*((1-G2)*X_2*(1/3)+G2*X_1*X_2*(1/3))-C_1;
f2 = L1*(G1^2*(X_3+H11)*(1/3)+(1-G1)^2*H12*G2*(1/3)+(1-G1)^2*(H12+X_1)*(1-G2)*(1/3))+L1*G1*(1-G1)*((G2*((1-X_2)+(1/3)*X_2))+(1-G2)*((1-X_2)*((1-X_2)+X_2*(1/3))))+L1*G1*(1-G1)*((1/3)*G2*X_1*X_2+(1-G2)*X_2*(1/3))-C_2;
f3 = C_1+C_2+C_3-1;
g1 = L1*(G1^2*H11*(1/3)+(1-G1)^2*(H12+X_1+X_2)*(1/3)+G1*(1-G1)*X_3*(1/3)+G1*(1-G1)*((1-X_3)+X_3*(1/3)))-C_4;
g2 = (1-L1)+L1*(G1^2*((1-H11)+H11*(2/3))+(1-G1)^2*((1-H12-X_1-X_2)+(H12+X_1+X_2)*(1/3))+2*(1-G1)*G1*X_3*(1/3))-C_5;
g3 = C_4+C_5+C_6-1;
h1 = 1-L1+L1*(G1^2*(1-(2/3)*H11)+(1-G1)^2*(1-(2/3)*G2*H12-(2/3)*H12*X_1+(2/3)*G2*H12*X_1)+2*G1*(1-G1)*(1/3)*G2*X_1*X_2*X_3+2*G1*(1-G1)*(1/3)*X_2*X_3*(1-G2))-C_7;
h2 = L1*((1/3)*G1^2*H11+(1/3)*(1-G1)^2*(G2*H12+H12*X_1-G2*H12*X_1)+2*G1*(1-G1)*(G2-(2/3)*X_1*X_2*X_3*G2)+2*G1*(1-G1)*(1-(2/3)*X_2*X_3*(1-G2)))-C_8;
h3 = C_7+C_8+C_9-1;
I = ideal({f1,f2,f3,g1,g2,g3,h1,h2,h3})