function [x] = ConvertBin2Dec(Pop,PopSize,SL)

for i = 1 : PopSize
    
    for j = 1 : SL
        
        Str(j) = num2str(Pop(i,j));
    
    end
    
    x(i) = bin2dec(Str);
    
end