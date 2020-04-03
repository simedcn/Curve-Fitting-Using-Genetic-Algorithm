function [mutant] = mutation(pop,popsize,SL,pm)
%Inputs:   pop - string population
%          popsize - population size
%          pm      - mutation probability
%          SL    - string length
%Output:   mutant  - string population after mutation
mutant = pop;
for i=1:popsize
    pr_rand = [];
    for j=1:SL
        % Generate the random probability k
        k=rand;
        pr_rand = [pr_rand k];
        % Perform the mutation if the random probability falls below pm
        if k<=pm
            mutant(i,j)=xor(pop(i,j),1);
        end
    end
end


