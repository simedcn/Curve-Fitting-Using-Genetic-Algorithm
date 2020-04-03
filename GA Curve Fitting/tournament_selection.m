function [NewPop] = tournament_selection(pop,fitness,popsize,torn_size)
%Input: pop - population string in binary (popsizexl)
%             l is string length
%       fitness - fitness values for each string
%       torn_size - tournament selection
%Output:  newPop  - new population after tournament selection method

NewPop = pop;

for i= 1:popsize
    % Randomly select K fitness values from the fitness vector
    fitRand = randsample(fitness,torn_size);
    % Discover the maximum fitness from those K fitness values
    maxfit=max(fitRand);
    % Identify the index of the individual that has the maximum fitness
    % value
    indice = find(fitness(:,1)==maxfit);
    
    NewPop(i,:) = pop(indice(1),:);
%     for q=1:popsize
%         if fitness(q,1)==maxfit
%             NewPop(i,:)=pop(q,:);
%         end
%     end
end


