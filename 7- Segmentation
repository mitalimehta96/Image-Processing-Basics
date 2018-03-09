%IMAGE SEGMENTATION USING ROBERTS, PREWITT AND SOBEL OPERATORS.
clc;
clear all;
close all;
myImage=imread('mitali.jpg');
myGrayImage=rgb2gray(myImage);
f= imresize(myGrayImage,[256,256]);
f = double(f);
imshow(uint8(f));
title('ORIGINAL IMAGE');
 
myImage1 = f;
myImage2 = f;
myImage3 = f;


%Roberts in x direction
for i=1:255
    for j=1:255
        myImage1(i,j) = -f(i,j)+ f(i+1,j+1);
    end
end
 
%Roberts in y direction
for i=1:255
    for j=1:255
        myImage2(i,j) = -f(i+1,j)+ f(i,j+1);
    end
end
 
%Roberts with Combined Gradients
myImage3 = myImage1 + myImage2;
 
figure
imshow(uint8(myImage1));
title('ROBERTS OPERATOR IN HORIZONTAL DIRECTION');
 
figure
imshow(uint8(myImage2));
title('ROBERTS OPERATOR IN VERTICAL DIRECTION');
 
figure
imshow(uint8(myImage3));
title('ROBERTS OPERATOR FOR SEGMENTATION OF IMAGE');

myImage1 = f;
myImage2 = f;
myImage3 = f;


%Sobel in x direction
for i=2:255
    for j=2:255
        myImage1(i,j) = -f(i-1,j-1)+ -2*f(i,j-1) -f(i+1,j-1) +f(i-1,j+1) +2*f(i,j+1)+ f(i+1,j+1);
    end
end
 
%Sobel in y direction
for i=2:255
    for j=2:255
        myImage2(i,j) = -f(i-1,j-1)+ -2*f(i-1,j) -f(i-1,j+1) +f(i+1,j-1) +2*f(i+1,j)+ f(i+1,j+1);
    end
end
 
%Sobel with Combined Gradients
myImage3 = myImage1 + myImage2;
 
figure
imshow(uint8(myImage1));
title('SOBEL OPERATOR IN HORIZONTAL DIRECTION');
 
figure
imshow(uint8(myImage2));
title('SOBEL OPERATOR IN VERTICAL DIRECTION');
 
figure
imshow(uint8(myImage3));
title('SOBEL OPERATOR FOR SEGMENTATION OF IMAGE');

myImage1 = f;
myImage2 = f;
myImage3 = f;


%Prewitt in x direction
for i=2:255
    for j=2:255
        myImage1(i,j) = -f(i-1,j-1)+ -f(i,j-1) -f(i+1,j-1) +f(i-1,j+1) +f(i,j+1)+ f(i+1,j+1);
    end
end
 
%Prewitt in y direction
for i=2:255
    for j=2:255
        myImage2(i,j) = -f(i-1,j-1)+ -f(i-1,j) -f(i-1,j+1) +f(i+1,j-1) +f(i+1,j)+ f(i+1,j+1);
    end
end
 
%Prewitt with Combined Gradients
myImage3 = myImage1 + myImage2;
 
figure
imshow(uint8(myImage1));
title('PREWITT OPERATOR IN HORIZONTAL DIRECTION');
 
figure
imshow(uint8(myImage2));
title('PREWITT OPERATOR IN VERTICAL DIRECTION');
 
figure
imshow(uint8(myImage3));
title('PREWITT OPERATOR FOR SEGMENTATION OF IMAGE');



