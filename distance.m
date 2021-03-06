% TO FIND 4 CONNECTED AND 8 CONNECTED PIXEL FIGURES, AND TO FIND 4 TYPES 
% OF DISTANCES BETWEEN TWO SELECTED PIXELS. ALSO FINDS OUT DISTANCE BETWEEN
% TWO DIFFERENT IMAGES.
 
clc;
clear all;
myImage=imread('your_image_path');
imshow(myImage)
myGrayImage=rgb2gray(myImage);
imshow(myGrayImage);
myImage1= imresize(myGrayImage,[255,255]);
myImage2= myImage1;
size(myImage1);
 
myImage1(50,50) = 0;
myImage1(250,250) = 0;
myImage1(100,100) = 0;
myImage1(80,50) = 0;
myImage1(70,150) = 0;
myImage1(150,40) = 0;
myImage1(130,130) = 0;
myImage1(10,150) = 0;
myImage1(220,50) = 255;
myImage1(90,100) = 0;
 
myImage1(50,51) = 0;
myImage1(49,50) = 0;
myImage1(51,50) = 0;
myImage1(50,49) = 0;
 
myImage1(150,39) = 0;
myImage1(150,41) = 0;
myImage1(151,40) = 0;
myImage1(149,40) = 0;
myImage1(151,39)= 0;
myImage1(151,41) = 0;
myImage1(149,39) = 0;
myImage1(149,41) = 0;
 
imshow(myImage1);
 
% distance between pixels (80,50) and (130,130)
% Minkowaski Distance
 
mdist3 = ((130-80).^3 + (130-50).^3).^(1/3)
mdist4 = ((130-80).^4 + (130-50).^4).^(1/4)
mdist10 = ((130-80).^10 + (130-50).^10).^(1/10)
mdist50 = ((130-80).^50 + (130-50).^50).^(1/50)
 
% Euclidian Distance
 
edist= ((130-80).^2 + (130-50).^2).^(1/2)
 
% 4-connected distance/City block distance
 
cityblockdist = abs(130-80)+abs(130-50)
 
% 8-connected distance/Chess board distance
 
chessboarddist = max((130-80),(130-50))
 
% DISTANCE BETWEEN TWO DIFFERENT IMAGES
twodiffimgdist=0;
sameimgdiff=0;
for i=1:255
    for j=1:255
        twodiffimgdist= twodiffimgdist + abs(myImage1(i,j)-myImage2(i,j));
        sameimgdiff = sameimgdiff + abs(myImage1(i,j)-myImage1(i,j));
    end
end
 
