function [stats] = canonball(num, stats)

%function to fire a canonball to the opponent (modify the stats) 

%calling function to make things according to the function
[num, num1] = reassign(num);

%conditional execution for modifying the stats
if stats(num1,3)==100    %if Xp of the opponent is equal to 100
    %calling function to play the sword sound
    playsound(4);
    if stats(num,2)==0   %If armour of oppo is zero
        %reduce his health by 60, where pos 2 is 1 for the health column
        stats(num,1) = stats(num,1) - 60;
    else
        %else reduce health by 40 
        %for health position 2 is 1
        stats(num,1) = stats(num,1) - 40;
        %for armour position 2 is 2
        if stats(num,2)>=50  %If armour is greater than 50
            stats(num,2)=10; %make it 10
        else
            stats(num,2)=20; %else make it 20
        end
    end
    %reduce his Xp to 0, where pos 2 is 3 for the Xp column
    stats(num1,3) = 0;
else
    playsound(8);   %incorrect input sound
    fprintf("\nYour Xp must be equal to 100 Xp !!\n");  %display error message 
    fprintf("Try a different attack: ");
    stats = get_attack(num1, stats);  %promting the user again for input
end

%returning the modified stats back to where it was called

end