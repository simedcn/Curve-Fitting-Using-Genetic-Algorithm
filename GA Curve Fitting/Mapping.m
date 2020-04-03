function [X]=Mapping(x,Ymin,Ymax,SL)

X = x;

for i = 1 : size(x,1)
    
    X(i) = (Ymax - Ymin)/(2^(SL)-1) * X(i) + Ymin;
    
end