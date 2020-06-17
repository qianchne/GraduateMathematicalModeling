%%%% chan 2020/06/17
%%% this script solve the problem below

%%% max z =  2x1 + 3x2 - 5x3
%%% s.t. x1 + x2 + x3 = 7
%%%      2x1 - 5x2 + x3 >= 10
%%%      x1 + 3x2 + x3 <= 12
%%%      x1, x2, x3 >= 0

%%% normal format of liner programme in matlab
%%%  min_x cTx
%%%  s.t. Ax<=b, Aeq*x = beq, lb<= x <= ub
c = [2; 3; -5];
a = [-2, 5, -1; 1, 3, 1];
b = [-10; 12];
aeq = [1,1,1];
beq = 7;
x = linprog(-c, a, b, aeq, beq, zeros(3,1));
value = c'*x







