% Canonical form 
% min z
% < or = type constraints
option = optimoptions(@fminunc,'Display','iter','Algorithm','quasi-newton')
fun = @(x)3*x(1)^2+x(2)^2-10
x0 = [1,2]
[x,fval] = fminunc(fun,x0,option)