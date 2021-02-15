function [stats] = get_attack(num, stats)

%function to get input from the user

%num input specifies whose attack is this

%promting user to enter the input
attack = input("", 's');

%using switch statement to run a case if it matches any or else ask again
switch attack
    %for the entire switch statement, the function we call give back the 
    %modified version of stats
    %for each case we call a different function for a different attack
    case 'g'
        stats = gunshot(num,stats);
    case 's'
        stats = sword(num,stats);
    case 'c'
        stats = canonball(num,stats);
    case 'm'
        stats = medical(num,stats);
    case 'S'
        stats = skip(num,stats); 
    case 'r'
        stats = rules(num,stats);
    case 'd'
        stats = damage(num,stats);
    otherwise 
        %if no case is achieved, an eeor message is displayed with sound
        playsound(8); %buzzer soound for incorrect input
        %error message
        fprintf("\nUser Attack Error !!\nAllowed inputs: g s c m S r d");
        fprintf("\nEnter a valid input! : ");
        %asking the user to input again
        stats = get_attack(num, stats);
end

%nested loop to get the updated stats values in the range of 0 to 100
for i=1:2
    for j=1:3
        if stats(i,j)>=100  %condition if the number is greater than 100
            stats(i,j)=100; %if yes, than make it just 100
        end
        if stats(i,j)<=0    %condition if the number is less than 0
            stats(i,j)=0;   %if yes, than make it just 0
        end
    end
end

%return the modified stats to the round_game function, where it was called

end