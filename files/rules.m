function [stats] = rules(num,stats)

%function to display the trules of the game

fprintf("\nHere are the rules for stats and attack !!\n");

fprintf("If opponent's health hits zero, you win !!\n");
fprintf("Health, Armour and Xp are in the range of 0 to 100 !!\n");
fprintf("\nKeywords to enter for attack !!\n");
fprintf("1. g - Fire a gunshot..\n");
fprintf("2. s - Pierce a sword.. (You require atleast 20 Xp)\n");
fprintf("3. c - Fire a canonball.. (Available at 100 Xp)\n");
fprintf("4. m - Medical amenities..\n");
fprintf("5. S - Skip move to get 40 Xp..\n");
fprintf("6. r - To get this list again..\n");
fprintf("7. d - Get details for the damages the attacks cause..\n");
fprintf("\n");

fprintf("Try a different attack: ");
stats = get_attack(num, stats);  %promting the user again for input
end
