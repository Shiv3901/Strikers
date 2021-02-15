function [final_word] = words(org_word,size_box)

%function to create a word letter by letter

%Initialising a single line in img format to start with concatenating
final_word = ones(5*size_box,1);

%creating a double vector that stores individual ASCII values of the
%characters in the word served
user_vec = double(org_word);

%for loop to go each stored ASCII value to generate an image of the letter
%and concatenate it back to final_word
for i=1:length(user_vec)
    %calling function to create a letter step by step
    final_word = word(final_word, user_vec(i),size_box);
end

%returning final_word to the place where it was called

end
