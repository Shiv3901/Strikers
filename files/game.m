clear; clc;

%game starts here with displaying a rule book

%Code to display the rules
%displaying rules
fprintf('\t\t\t*********  Welcome  **********');
fprintf('\n\n\t\t\t*****  To Fight Arena  *******');
fprintf("\n\nHere are the rules of the game: \n\n");
fprintf("1. It's a 2 player game (not with computer)\n");
fprintf("2. Starts with asking how many rounds to play? (0 to 9)\n");
fprintf("3. Asks for two usernames (must be 8 characters)\n");
fprintf("4. Gets to the fight Arena (Round play)\n");
fprintf("5. Game is simple, get opponents health to 0 to win the round\n");
fprintf("6. You have three bars of health, armour, and Xp\n")
fprintf("7. Shooting a gunshot gives you 30 Xp\n");
fprintf("8. Piercing a sword costs you 20 Xp\n");
fprintf("9. Firing a canon rquires you to have 100 Xp first\n");
fprintf("10. To use a medic your health must be less than equal to 20\n");
fprintf("11. Skipping a move gives you an extra 40 Xp\n");
fprintf("12. To get the damage details, press d in Enter Your Attack\n");

fprintf("\nTo get a better view of the game, please undock the command");
fprintf("window \nand also the image displayed right underneath it !!");

fprintf("\n\nEnjoy playing the game\n");
enter = input('\nPress enter to start: '); %user must press enter key
%no restrictions

%Code to get the number of rounds

%user is assumed to put in a number and not a letter
rounds = input("\nHow many rounds do you want to play? (0 to 9): ");  
%Integer input

while rounds>9 || rounds<0  %rounds can only be from 0 to 9
    
    %Buzzer sound for wrong input by calling playsound function with num 8
    playsound(8);
    fprintf("You can only play between 0 to 9 rounds !!\n"); %Error
    rounds = input("How many rounds do you want to play? : ");
    
end

clc;        %to get the command window clear

%%
%Code to accept two different usernames

%restriction to enter the username
fprintf("\nOnly Uppercase and numbers are allowed to input !!\n");
fprintf("Or else will get converted to upper cases\n");

%prompting user to enter a userame 
nam1 = input("\nPlayer 1 (must be 8 characters): ", 's');

while size(nam1)~=8   %if the size of the input is not 8
        playsound(8);    %Buzzer sound 
        %Taking the input again
        fprintf("\nMust be 8 length character can be taken as input !!\n");
        nam1 = input("Player 1 : ", 's');
end

%prompting user to enter another userame 
nam2 = input("\nPlayer 2 (Must be 8 characters): ", 's');

while size(nam2)~=8 %if the size of the input is not 8
        playsound(8);   %Buzzer sound
        %Taking the input again
        fprintf("\nMust be 8 length character can be taken as input !!\n");
        nam2 = input("Player 2 : ", 's');
end

nam1 = upper(nam1);
nam2 = upper(nam2);

%checking if the entered entered are different
value = 0;
while value ~= 1
    if strcmp(nam1,nam2)==1
        fprintf("\nAlert :: Same usernames !!\n");
        playsound(8);   %Buzzer sound
        %Taking the input again
        fprintf("\nMust be 8 length character can be taken as input !!\n");
        nam2 = input("Player 2 : ", 's');
        nam2 = upper(nam2);
        while size(nam2)~=8 %if the size of the input is not 8
            playsound(8);   %Buzzer sound
            %Taking the input again
            fprintf("\nMust be 8 length character can be taken as input !!\n");
            nam2 = input("Player 2 : ", 's');
            nam2 = upper(nam2);
        end
    else 
        value = 1;
    end
end

%storing the nam1 & nam2 into 2x8 vector to get 2 rows of names of players
names = [nam1; nam2];
clc;
fprintf("Loading the next round.......");
%%
%Initialising the round score of two players to be 0 & 0
scoreboard = [0,0];
Rounds_teli = [];

%calling the round_game function to play the round
for i=1:rounds      
    
    %using for loop to play that many times
    [scoreboard, whowintheround ] = round_game(scoreboard, names);
    Rounds_teli = [Rounds_teli, whowintheround];
    clc;
    fprintf("     \n\nNext round is being loading up.......");
end

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
fprintf("Thanks for Playing Fight Arena!!");
pause(2);  %making a pause of 2 seconds
clc;