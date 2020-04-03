function [popCross] = simple_crossover(pop,SL,popsize,pc)
%Inputs:   pop - string population after reproduction
%          SL -  string length
%          popsize - population size
%          pc  -  crossover probapility
%Output:   popCross - string population after crossover

popCross=pop;
Cpop=pop;

for i = 1:fix(popsize/2)
        %Randomly generate the cross site for one-point cross over
        CS= randi(SL-1,1); 
        %display('Cross Site:');
        CS;
        % Select the parents for cross-over 
        ran(1,1)=randi(popsize-1,1,1);
        ran(1,2)=randi(popsize,1,1); %generating 2 random numbers
%         if ran(1,1)==ran(1,2)  %preventing two random strings to be chosen again
%             ran(1,2)=ran(1,1)+1;
%         end
    % Cross two parents when the random probability is less than Pc    
    if rand <= pc
        
        a=Cpop(ran(1,1),CS+1:end); 
        b=Cpop(ran(1,2),CS+1:end);
        Cpop(ran(1,1),CS+1:end)=b;
        Cpop(ran(1,2),CS+1:end)=a;
    end
    % Save the generated offsprings into the new population set
    popCross(2*i-1,:)=Cpop(ran(1,1),:); 
    popCross(2*i,:)=Cpop(ran(1,2),:);
    % 
    Cpop=pop;
end