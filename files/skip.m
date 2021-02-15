function [stats] = skip(num,stats)

%function to perform skip (modify the stats) 

%calling function to play the skip sound
playsound(6);

%modifying stats
%adding 40 Xp, where pos 2 is 3 for Xp column
stats(num,3) = stats(num,3) + 40;

%returning the modified stats back to where it was called

end