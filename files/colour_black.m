function [word_1] = colour_black(word_1, vec)

%function to create an image with black as a colour using input vec

%determining the size of the vector
[rows, cols] = size(vec); 

size_box = size(word_1,1)/rows;

%nested 4-dimensional loop to colour a specific box of 6x6 matrix
for row=1:rows   %this loop goes through each iteration of the num of rows
    for col=1:cols  %goes through number of columns of vec
        for i=1:size_box   %now it will go to each row of the box covered
            for j=1:size_box  %same for the columns of word_1
                %statement to see if the stored value is 1
                if vec(row,col) == 1
                    %this staement makes sure to get to all the values of
                    %the box that it capture in the big word_1
                    word_1(i+((row-1)*size_box), j+((col-1)*size_box)) = 0;
                    %in short this nested loop reducing of many long
                    %conditional statements
                end
            end
        end
    end
end

rows = size(word_1,1);

%creating a 2 column vector giving value one
ext = ones(rows,2);

%concatenating the ext on both size to get 34 columns in total
word_1 = [ext word_1 ext];

%returning word_draft back to where the function was called 

end