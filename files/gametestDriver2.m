clear; clc;

%driver for a part of the game file

%this file tests if a part of the game file runs 
%it checks if the final part of the file works, which is displaying the 
%winner

%Hardcoding some initials
rounds = 9;
Rounds_teli = [0 1 1 0 1 0 0 1 0];
scoreboard = [4,5];
names = ['Random23'; 'Random45'];

%%
%code to display won which round
fprintf("\n\n******Final Teli of the Rounds*****\n\n");
for i=1:rounds
    fprintf("\tRound %d   ::   ",i);
    if Rounds_teli(i) == 1
        fprintf("%s won\n",names(1,:));
    else
        fprintf("%s won\n", names(2,:))
    end
end

pause(5);
clc;
%%
%Code to display final winner 

%using if loop to go through 4 different cases
if rounds==0 
    
    %in case if no rounds were played
    fprintf("Maybe today's not your day !!");
    
elseif scoreboard(1)==scoreboard(2)
    
    %if it was a tie
    fprintf("It's a tieeeeeeeeeeeeee !");
    
elseif scoreboard(1)>scoreboard(2)
    
    %player 1 wins
    playsound(9);
    fprintf("\n\n%s is the overall Winner, after playing ",names(1,:));
    fprintf("%d round(s) !!!!!", rounds);
    win_percent = scoreboard(1)/rounds;
    fprintf("\n\nThe player won ");
    fprintf("%d round(s) to be where he/she is !!",scoreboard(1));
    fprintf("winning percentage of %.2f%% !!", win_percent*100);
    
else 
    
    %player 2 wins
    playsound(9);
    fprintf("\n\n%s is the overall Winner, after playing ",names(2,:));
    fprintf("%d round(s) !!!!!", rounds);    
    win_percent = scoreboard(2)/rounds;
    fprintf("\n\nThe player won ");
    fprintf("%d round(s) to be where he/she is with ",scoreboard(2));
    fprintf("winning percentage of %.2f%% !!", win_percent*100);
    
end

pause(8);  %making a pause of 3 seconds
clc;

%%
%Final display for thanks
fprintf("Thanks for Playing !!");