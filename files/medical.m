function [stats] = medical(num,stats)

%function to take medicine to the opponent (modify the stats) 

%conditional execution for modifying the stats
if stats(num,1)<=20         %if health of the attacker is less than 20
    if stats(num,3)>=40     %if it has more than 40 Xp
        %calling function to play the sword sound
        playsound(5);
        if stats(num,2)>=20 %if it has armour greater than 20
            stats(num,1) = stats(num,1) + 30;  %adding 30 health
            stats(num,2) = stats(num,2) - 10;  %reducing armour by 10
            stats(num,3) = stats(num,3) - 30;  %reducing Xp by 30
        else  %armour less than 20
            stats(num,1) = stats(num,1) + 20;  %adding 20 health
            stats(num,2) = 0;       %making armour 0
            stats(num,3) = 10;      %making Xp 10
        end
    elseif stats(num,2)>=30
        playsound(5);
        stats(num,1) = stats(num,1) + 20;  %adding 30 health 
        stats(num,3) = 0;                  %making Xp 0
        stats(num,2) = 10;                 %making armour 10
    else
        %displaying a gratitude message
        fprintf("\nJust for helping out, giving 10 health points!!\n");
        stats(num,1) = stats(num,1) + 10;  %providing extra 10 health
        fprintf("\nBut sorry my friend, you going to die !!\n");
        pause(3);  %pausing for 3 seconds
    end
else
    playsound(8);       %incorrect input sound
    fprintf("\nYour Health is greater than 20 !!\n");%display error message
    fprintf("Try a different attack: ");
    stats = get_attack(num, stats); %prompting the user again for input
end

%returning the modified stats back to where it was called

end