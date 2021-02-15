function [] = playsound(num)

%function to play sound effects stored in mp3 format in the source folder

%using switch staement to get through cases of input argument of num


%using function audioread to read in the music file
%play function to play the music
%pause function to stop for the specific seconds
%audioplayer function to make it sound once more
switch num
    case 1
        %sound effect for intro song
        [arr, value] = audioread('intro.mp3');
        intro = audioplayer(arr, value);
        play(intro);
        pause(3);
        clc;
    case 2
        %sound effect for gunshot
        [arr, value] = audioread('gunshot.mp3');
        shot = audioplayer(arr, value);
        play(shot);
        pause(3);
    case 3
        %sound effect for sword
        [arr, value] = audioread('sword.mp3');
        sword = audioplayer(arr, value);
        play(sword);
        pause(2);
    case 4
        %sound effect for canonball
        [arr, value] = audioread('canonball.mp3');
        canon = audioplayer(arr, value);
        play(canon);
        pause(4);
    case 5
        %sound effect for medical
        [arr, value] = audioread('medical.mp3');
        medical = audioplayer(arr, value);
        play(medical);
        pause(4);
    case 6
        %sound effect for skip
        [arr, value] = audioread('skip.mp3');
        skip = audioplayer(arr, value);
        play(skip);
        pause(3);
    case 7
        %sound effect for timebomb for the end of the round
        [arr, value] = audioread('end.mp3');
        ending = audioplayer(arr, value);
        play(ending);
        pause(4);
    case 8
        %sound effect for error
        [arr, value] = audioread('incorrect.mp3');
        incorrect = audioplayer(arr, value);
        play(incorrect);
        pause(1);
    case 9
        %sound effect for final round of apllause for the winner
        [arr, value] = audioread('final.mp3');
        final = audioplayer(arr, value);
        play(final);
        pause(4);
    otherwise
end

end
