function [] = check_stats(num)

%function to determine how much spaces to print

%conditional excecution to determine number of lines
if num>9 && num<100  %if yes, will print just 1 space
    fprintf(" ");
elseif num<=9        %if yes, will print 2 spaces
    fprintf("  ");
end

end