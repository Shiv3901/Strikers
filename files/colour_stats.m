function [] = colour_stats(stats,names,size_stats)

%function to display the board in image format

%creating a new array by multiplying it with 4.5
new_stats = stats*3.5;

%Initialising a vector with 350 rows and 1000 columns
board = ones(350,1000);

%nested for loop to display all the stats (Health, Armour, and Xp)
for size_1=1:3  %running thrice to get the three columns of stats
    for i=1:50
        for j=1:1000
            %conditional execution to get the columns of definite width
            if j<=new_stats(1,size_1)
                %In position 1 of board, it skips the first 100 rows of the
                %board and then iterates each new set of 50 rows when the
                %size_1 changes
                board(i+50*size_1+100,j) = 0;
            end
            %same as the above one, but the difference is that it is of
            %player 2
            if j<=new_stats(2,size_1)
                %j is replace by 1000-j to print it on the left side
                board(i+50*size_1+100,1000-j) = 0;
            end
        end
    end
end

%for loop to create gap between the bars inserted in the image
for i=1:20
    board(i+195,:) = 1;
    board(i+250,:) = 1;
end

%calling function to create image format for the inserted string
player_1 = words(names(1,:),7);

%initialising the size of the vector
[rows, cols] = size(player_1);

%displaying or inserting player_1 into the board by determing the position
%as well as making sure that the iteration remains same for both of them
for i=1:rows
    for j=1:cols
        board(i+50,j+135) = player_1(i,j);
    end
end

%Same as above
player_2 = words(names(2,:),7);

[rows, cols] = size(player_2);

for i=1:rows
    for j=1:cols
        board(i+50,j+635) = player_2(i,j);
    end
end

%getting two black lines to get two seperate lines for the players
for i=1:350
    if i<=140 || i>=310
        board(i,500) = 0;
        board(i,501) = 0;
    end
end


health_word = words('HEALTH',size_stats);
armour_word = words('ARMOUR',size_stats);
Xp_word = words('  XP  ',size_stats);

[rows, cols] = size(health_word);

number = 500-(round(cols/2));
number_1 = 50-(round(rows/2));

for i=1:rows
    for j=1:cols
        board(i+120+number_1,j+number) = health_word(i,j);
        board(i+180+number_1,j+number) = armour_word(i,j);
        board(i+235+number_1,j+number) = Xp_word(i,j);
    end
end


%using imshow function to display the image of the board
imshow(board);

end