function [newPop] = roulette_wheel(pop,fitness,popsize)
%Input: pop - population string in binary (popsizexl)
%             l is string length
%       fitness - fitness values for each string
%Output:  newPop  - new population after roulette wheel based selection

newPop = pop;
% This part is to scale the negative fitness to positive value by adding
% the absolute value of the minimum fitness
MinFit = min(fitness);
if(MinFit < 0) 
    fitness = fitness +(-MinFit);
end
% Compute the cumulative sum of fitnesses
sumFit = cumsum(fitness);

%n and m are indicators to show whether the second string is selected 
%in the second if condition (line #26)
m=0;  
n=0;

for i=1:popsize
    % Randomly generate a fitness value
    fiti = rand*sum(fitness); 
    for j=1:popsize-1
        %It checks each two consecutive elements of sumFit 
        %(starts from the last two elements) 
        if fiti<=sumFit(popsize-j+1,1)
           %Find the roulette slice in which our random generated num is located
           if fiti>=sumFit(popsize-j,1)    
               newPop(i,:)=pop(popsize-j+1,:);
               n=n+1;
           end
        end
    end
    
    if m==n
        newPop(i,:)=pop(1,:);
    else
        m=n;
    end
end
