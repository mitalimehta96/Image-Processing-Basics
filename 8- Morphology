%Morphology- Erosion, Dilation, Opening and Closing.
clc;
clear all;
close all;
myImage=imread('mitali.jpg');
level = graythresh(myImage);
myGrayImage=rgb2gray(myImage);
BW = im2bw(myGrayImage, level);
f= imresize(BW,[256,256]);
%f = double(f);
imshow(f);
title('ORIGINAL IMAGE');
 
%Erosion
myImage1 = erosion(f);
figure;
imshow(myImage1);
title('ERODED IMAGE');
 
%Dilation
myImage2 = dilation(f);
figure;
imshow(myImage2);
title('DILATED IMAGE');
 
%Opening
myImage3 = dilation(myImage1);
figure;
imshow(myImage3);
title('OPENING OPERATION ON IMAGE');
 
%Closing
myImage4 = erosion(myImage2);
figure;
imshow(myImage4);
title('CLOSING OPERATION ON IMAGE');

%Function for dilation
function a = dilation(myImage)
 
a = zeros(256,256);
for i=1:254
    for j=1:254
         if(myImage(i,j+1)==1 || myImage(i+1,j)==1 || myImage(i+1,j+1)==1 || myImage(i+2,j+1)==1 || myImage(i+1,j+2)==1)
                a(i,j)= 1;
         end
    end
end
 

%Function for erosion
function b = erosion(myImage)
 
b = zeros(256,256);
for i=1:254
    for j=1:254
         if(myImage(i,j+1)==1 && myImage(i+1,j)==1 && myImage(i+1,j+1)==1 && myImage(i+2,j+1)==1 && myImage(i+1,j+2)==1)
                b(i,j)= 1;
         end
    end
end
 

