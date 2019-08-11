clear;
clc;
format long;
t = linspace(0,1);
y = (9.*t).*exp(-2.*t);
eqn=[init*exp(-x/tau);A1*exp(s1*x)+A2*exp(s2*x);(A2+A1*x)*exp(-a*x);exp(-a*x)*(A1*cos(w*x)+A2*sin(w*x))];
sse=ones(1,4);
for i = 1:4
    [q,gof]=fit(t',y',char(eqn(i)));
    sse(i) = gof.sse;
end
idx=find(sse==min(idx));