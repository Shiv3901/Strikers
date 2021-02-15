clear; clc;

%driver for a part of the game file

%this file tests if a part of the game file runs 
%it check the number of rounds in the range of 0 1o 9, and different
%usernames from the user

%%
%Code to get the number of rounds

rounds = input("How many rounds do you want to play? (0 to 9): ");  
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
nam2 = input("Player 2 (Must be 8 characters): ", 's');

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