 function [maF,maX] = MA(fx,x,MAs,GenNo,popsize)

for i=11:GenNo+1
    for j=1:popsize
     maF(j,i-10)=sum(fx(j,i-10:i-1))/MAs;
     maX(j,i-10)=sum(x(j,i-10:i-1))/MAs;
    end
end

end