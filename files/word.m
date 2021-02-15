function [word] = word(word, num, size_box)

%function to add an image of a letter which it equal to the input ASCII
%code value

%double function of any char value gives us back the ASCII value

%switch statement to see if any case matches 
%and individual 5x5 vectors named vec are prepared specifically for each
%letter of the individual case
switch num
    case 'A'
        vec = [0 0 1 0 0; 0 1 0 1 0; 1 0 0 0 1; 1 1 1 1 1; 1 0 0 0 1];
    case 'B'
        vec = [1 1 1 1 0; 1 0 0 0 1; 1 1 1 1 1; 1 0 0 0 1; 1 1 1 1 0];
    case 'C'
        vec = [1 1 1 1 1; 1 0 0 0 0; 1 0 0 0 0; 1 0 0 0 0; 1 1 1 1 1];
    case 'D'
        vec = [1 1 1 1 0; 1 0 0 0 1; 1 0 0 0 1; 1 0 0 0 1; 1 1 1 1 0];
    case 'E'
        vec = [1 1 1 1 0; 1 0 0 0 0; 1 1 1 0 0; 1 0 0 0 0; 1 1 1 1 0];
    case 'F'
        vec = [1 1 1 1 0; 1 0 0 0 0; 1 1 1 0 0; 1 0 0 0 0; 1 0 0 0 0];
    case 'G'
        vec = [1 1 1 1 1; 1 0 0 0 0; 1 0 0 1 1; 1 0 0 0 1; 1 1 1 1 1];
    case 'H'
        vec = [1 0 0 0 1; 1 0 0 0 1; 1 1 1 1 1; 1 0 0 0 1; 1 0 0 0 1];
    case 'I'
        vec = [1 1 1 1 1; 0 0 1 0 0; 0 0 1 0 0; 0 0 1 0 0; 1 1 1 1 1];
    case 'J'
        vec = [1 1 1 1 1; 0 0 1 0 0; 0 0 1 0 0; 1 0 1 0 0; 1 1 1 0 0];
    case 'K'
        vec = [1 0 0 1 0; 1 0 1 0 0; 1 1 0 0 0; 1 0 1 0 0; 1 0 0 1 0];
    case 'L'
        vec = [1 0 0 0 0; 1 0 0 0 0; 1 0 0 0 0; 1 0 0 0 0; 1 1 1 1 1];
    case 'M'
        vec = [1 0 0 0 1; 1 1 0 1 1; 1 0 1 0 1; 1 0 0 0 1; 1 0 0 0 1];
    case 'N'
        vec = [1 0 0 0 1; 1 1 0 0 1; 1 0 1 0 1; 1 0 0 1 1; 1 0 0 0 1];
    case 'O'
        vec = [0 1 1 1 0; 1 0 0 0 1; 1 0 0 0 1; 1 0 0 0 1; 0 1 1 1 0];
    case 'P'
        vec = [1 1 1 1 1; 1 0 0 0 1; 1 1 1 1 1; 1 0 0 0 0; 1 0 0 0 0];
    case 'Q'
        vec = [1 1 1 1 0; 1 0 0 1 0; 1 0 0 1 0; 1 1 1 1 0; 0 0 0 0 1];
    case 'R'
        vec = [1 1 1 1 1; 1 0 0 0 1; 1 1 1 1 1; 1 0 1 0 0; 1 0 0 1 0];
    case 'S'
        vec = [1 1 1 1 1; 1 0 0 0 0; 1 1 1 1 1; 0 0 0 0 1; 1 1 1 1 1];
    case 'T'
        vec = [1 1 1 1 1; 0 0 1 0 0; 0 0 1 0 0; 0 0 1 0 0; 0 0 1 0 0];
    case 'U'
        vec = [1 0 0 0 1; 1 0 0 0 1; 1 0 0 0 1; 1 0 0 0 1; 1 1 1 1 1];
    case 'V'
        vec = [1 0 0 0 1; 1 0 0 0 1; 1 0 0 0 1; 0 1 0 1 0; 0 0 1 0 0];
    case 'W'
        vec = [1 0 0 0 1; 1 0 0 0 1; 1 0 0 0 1; 1 0 1 0 1; 1 1 0 1 1];
    case 'X'
        vec = [1 0 0 0 1; 0 1 0 1 0; 0 0 1 0 0; 0 1 0 1 0; 1 0 0 0 1];
    case 'Y'
        vec = [1 0 0 0 1; 0 1 0 1 0; 0 0 1 0 0; 0 0 1 0 0; 0 0 1 0 0]; 
    case 'Z'
        vec = [1 1 1 1 1; 0 0 0 1 0; 0 0 1 0 0; 0 1 0 0 0; 1 1 1 1 1];
    case ' '
        vec = zeros(5,5);
    case '.'
        vec = zeros(5,5);
        vec(5,1) = 1;
    case '-'
        vec = [0 0 0 0 0; 0 0 0 0 0; 0 1 1 1 0; 0 0 0 0 0; 0 0 0 0 0];
    case '_'
        vec = [0 0 0 0 0; 0 0 0 0 0; 0 0 0 0 0; 0 0 0 0 0; 1 1 1 1 1];
    case '1'
        vec = [0 1 0; 1 1 0; 0 1 0; 0 1 0; 1 1 1];
    case '2'
        vec = [1 1 1; 0 0 1; 1 1 1; 1 0 0; 1 1 1];
    case '3'
        vec = [1 1 0; 0 0 1; 0 1 1; 0 0 1; 1 1 0];
    case '4'
        vec = [0 0 1 1 0; 0 1 0 1 0; 1 0 0 1 0; 1 1 1 1 1; 0 0 0 1 0];
    case '5'
        vec = [1 1 1 1; 1 0 0 0; 1 1 1 0; 0 0 0 1; 1 1 1 0];
    case '6'
        vec = [0 1 1 0; 1 0 0 0; 1 1 1 0; 1 0 0 1; 0 1 1 0];
    case '7'
        vec = [1 1 1 1; 0 0 0 1; 0 0 1 0; 0 1 0 0; 0 1 0 0];
    case '8'
        vec = [0 1 1 0; 1 0 0 1; 0 1 1 0; 1 0 0 1; 0 1 1 0];
    case '9'
        vec = [0 1 1 0; 1 0 0 1; 0 1 1 1; 0 0 0 1; 0 1 1 0];
    case '0'
        vec = [0 1 1 0; 1 0 0 1; 1 0 0 1; 1 0 0 1; 0 1 1 0];
    case '='
        vec = [0 0 0 0; 1 1 1 1; 0 0 0 0; 1 1 1 1; 0 0 0 0];
    otherwise   %Other just giving a 5x5 vector of zeros
        vec = zeros(5,5);
end

%determing the rows and cols of the vec
[rows, cols] = size(vec);

%creating a vector called let
let = ones(rows*size_box,cols*size_box);

%calling function to create a 30x30 vector image of a letter (vec) sent
let = colour_black(let, vec);

%concatenig that into the word
word = [word, let];

%returning word back to where the function was calles

end