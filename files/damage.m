function [stats] = damage(num,stats)

fprintf("\n\nDamage done by attacks !!!\n\n");
fprintf("1. g - With Armour: -10 health, -5 Armour\n");
fprintf("       Without Armour: -20 health\n");
fprintf("       Opponent get 40 Xp\n");
fprintf("2. s - With Armour: -30 health, -15 Armour\n");
fprintf("       Without Armour: -40 health\n");
fprintf("       Will cost the opponent get 20 Xp\n");
fprintf("3. c - Working on it !!\n");
fprintf("4. m - Workng on it !!");
fprintf("5. S - Opponent get 30 Xp\n");
fprintf("\n");

fprintf("Try a different attack: ");
stats = get_attack(num, stats);  %promting the user again for input
end