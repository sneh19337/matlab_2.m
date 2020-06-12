%app chosen to collect the data is WHATSAPP 
%A program written to do a probability experiment through MATLAB tools
%This is experiment 2 of the MATLAB experiment
%the array to store the data

%the data is supposed to be in minutes hence if two messages came at same
%time then we without taking into consideration seconds as the app don't
%show seconds take the difference as 0
 
disp("This is experiment two"); 
x=[1;5;2;2;1;4;1;0;0;0;0;1;1;2;2;1;50;15;1;0;0;1;1;1;1;2;4;3;1;2];
%the array storing the probabilities of the data
px=[1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30; 1/30];
%the expectation of the experiment is denoted by exe
exe=sum(x.*px);
%plotting the histogram
histogram(x);

title("Experiment 2 Histogram Plot");
xlabel("The measured time gaps for the experiment");
ylabel("The frequencies for the time gaps taken for the experiment");
disp("THE VALUE OF THE EXPECTATION CALCULATED THROUGH THE DATA");
disp("the expectation for the experiment  calculated directly from the same data taken in the program itself ="+exe);
disp("THE VALUE OF THE PROBABILITY CALCULATED THROUGH THE DATA");
ey=fitdist(x,'normal');
disp("normal distribution");
disp("parameters");
disp("   mu =     3.5   [0.0612083, 6.93879]");
disp("   sigma = 9.20925   [7.33431, 12.3801]");
p=pdf(ey,x);
q=cdf(ey,x);
%line(x,q); can be used to plot cdf
%line(x,p); can be used to plot pdf
% this function is used to calculate probability that the next message is
% received in time less than the expected value
[r,c] = size(x); % get the column of A
nr = 0:exe+1;  %range of the numbers
Prob=cdf(ey, exe);% finding the sum of cdf upto the values less than expectation
%which eventually is our probability
for j = 1:c   
    for i = 1:length(nr)   
        h(i,j) = length(find(x(:,j) == nr(i)))/r;  
    end
end
disp("the probability for the experiment calculated from the data taken from file ="+Prob);

%data taken for head tail calculation 
q=[1;34;1;1;0;0;0;2;2;3];
n = 10;
head=0;
tail=0;
while n~=0
    if q(n)<exe
        head=head+1;
        
    else
        tail=tail+1;
    end
    n=n-1;
end
disp("head = "+head);
disp("tail ="+ tail);
disp("SO THE NUMBER OF HEADS THROUGHOUT THIS EXPERIMENT ="+head+  "   AND THE NUMBER OF TAIL THROUGHOUT THE EXPERIMENT = "+tail);
