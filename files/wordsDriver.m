clear; clc;

%driver for word function

%case 1
word_1 = 'Blue is the new Orange';
word_1 = upper(word_1);
size_box = 10;
final_word = words(word_1, size_box);
imshow(final_word);
pause(4);

%case 2
word_1 = 'Random Name';
word_1 = upper(word_1);
size_box = 5;
final_word = words(word_1, size_box);
imshow(final_word);
pause(4);

%case 3
word_1 = 'Random Name of a guy';
word_1 = upper(word_1);
size_box = 15;
final_word = words(word_1, size_box);
imshow(final_word);