function [] = command_window(names,stats,leaderboard)

%function to display the board in the command window

%calculating the number of rounds
round_num = leaderboard(1) + leaderboard(2) + 1;

%the entire display for the board
fprintf("**************************************************\n");
fprintf("||                                              ||\n");

%where the round number is shown
fprintf("-------------------- ROUND  %d -------------------\n",round_num);
fprintf("||                      ||                      ||\n");

fprintf("--------------Statistics of the Game--------------");
fprintf("\t\t~~~~~~~~~~~~~~~~~~~~~~~~~\n");

fprintf("||                      ||                      ||");

%it is where the attack letter are displayed simutaneously on the right
fprintf("\t\t|         ATTACK        |\n");

%displaying the actual usernames of both usernames using the same loop
%nested loop 
for i=1:2  %index changes the name used
    fprintf("||       %s", names(i,:));     %used to get another name
    for j=1:7
        fprintf(" ");  %spaces after a name is displayed
    end
end
fprintf("||");
fprintf("\t\t~~~~~~~~~~~~~~~~~~~~~~~~~\n");

fprintf("||                      ||                      ||");
fprintf("\t\t|     g - Gunshot       |\n");

%nested loop to print the statistics
for i=1:3
    for j=1:2
        %switch statement to change what to display
        switch i
            case 1
                fprintf("||     Health : ");
            case 2
                fprintf("||     Armour : ");
            case 3
                fprintf("||       Xp   : ");
        end
        %calling function to get the numbers aligned correct
        check_stats(stats(j,i));
        %printing the exact statistics using the jth rows & ith column
        fprintf("%d     ", stats(j,i));  
        
        %for example,
        %when j=1 & i=1, it will print health of the first player
        %when j=2 & i=3, it will print Xp of the second player
    end
        fprintf("||\t\t|");
        %using switch statement to print the desired output
        switch i
            case 1
                fprintf("     s - Sword    ");
            case 2
                fprintf("     c - Canonball");
            case 3
                fprintf("     m - Medical  ");
        end
        fprintf("\t|\n");
end

%printing the rest of the display
fprintf("||                      ||                      ||");
fprintf("\t\t|     S - Skip          |\n");
fprintf("--------------------------------------------------");
fprintf("\t\t|     r - Get rules     |\n");

%displaying the leaderboard at the end of the board
fprintf("||                  Leaderboard                 ||");
fprintf("\t\t|     d - Get damage    |\n");
fprintf("--------------------------------------------------");
fprintf("\t\t~~~~~~~~~~~~~~~~~~~~~~~~~\n");
%won round(s) of player 1
fprintf("||           %d          ", leaderboard(1));
%won round(s) of player 2
fprintf("||           %d          ||\n", leaderboard(2));
fprintf("**************************************************\n");

end