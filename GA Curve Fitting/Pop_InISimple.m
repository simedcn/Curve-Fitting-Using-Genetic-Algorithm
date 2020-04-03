function [pop,x,x1] = Pop_InISimple(PopSize, SL)
% Input Variables: PopSize, SL
% PopSize: The size of the population
% SL: The string length of each individual in the population
% GenNo: The total number of the generation
% Create a list of binary strings
pop = round(rand(PopSize,SL)); %generating a random population



     