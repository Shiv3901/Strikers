function [scoreboard, num] = round_game(scoreboard, names)

%function to play individual round which involves using different functions

%playing the intro song before the start of the game 
playsound(1);

%initialising statistics of the 2 players to 2x3 vector
stats = [100 100 0; 100 100 0];
%where 1st column is Health starting with 100
%2nd column is Armour starting with 100
%3rd column is Xp starting with zeros, as no attacks played yet

clc; %clearing the screen

%initialising the size of the stats to be displayed in the image
size_stats = 4;

%calling function to display the board in the command window 
command_window(names, stats,scoreboard);

%using while loop to play until a condition is met

while 1     %will run itself until a break commmand is used
    
    %displaying whose turn it is to play
    if stats(1,3) == 100        %if the Xp hits 100 for canonball
        fprintf("\nCanonball is available !!\n");
    end
    fprintf("\n%s \n\nYour Turn: ", names(1,:));
    %calling function to get attack from user
    %and simultaneously apply those effects and get the updated stats 
    %back from the function
    stats = get_attack(1, stats);    %1 suggets the attack is of player 1
    clc;  %clearing the screen
    
    %conditional execution to check if there is a winner
    if stats(2,1)==0  %if the health of the oppo hits zero
        %calling function to display the stats
        colour_stats(stats,names,size_stats);
        %calling function to play the timebomb sound
        playsound(7);
        %increasing scoreboard of player 1 by 1 for player 1
        scoreboard(1) = scoreboard(1) + 1;
        num = 1;  %player 1 won
        %displaying the winner of the round
        fprintf("%s is the winner of this round !!", names(1,:));
        pause(3);   %pausing fo r3 seconds
        break;
    end
    
    %calling function to display the board in the command window 
    command_window(names, stats,scoreboard);
    %calling function to display the stats in the image
    colour_stats(stats,names,size_stats);
    
    %the same process as the above one just change the position 2
    %to index 2
    if stats(2,3) == 100        %if the Xp hits 100 for canonball
        fprintf("\nCanonball is available !!\n");
    end
    fprintf("\n%s \n\nYour Turn: ", names(2,:));
    stats = get_attack(2, stats);
    clc;
    
    if stats(1,1)==0 
        colour_stats(stats,names,size_stats);
        playsound(7);
        scoreboard(2) = scoreboard(2) + 1;
        num = 0;
        fprintf("%s is the winner of this round !!", names(2,:));
        pause(3);
        break;
    end
    
    command_window(names, stats,scoreboard);
    colour_stats(stats,names,size_stats);
end



end