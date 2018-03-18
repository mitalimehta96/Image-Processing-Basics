% Apply 2 level decomposition using LPF and HPF filter Banks on given image. 
clc;
clear all;
close all;
myImage=imread('mitali.jpg');
myGrayImage=rgb2gray(myImage);
f= imresize(myGrayImage,[256,256]);
imshow(f);
title('ORIGINAL IMAGE');
 
[Lo_D,Hi_D] = wfilters('haar','d');
% Level 1 decomposition
 
[A,H,V,D] = dwt2(f,Lo_D,Hi_D);
figure;
subplot(2,2,1);
imagesc(A);
subplot(2,2,2);
imshow(H);
subplot(2,2,3);
imshow(V);
subplot(2,2,4);
imshow(D);
 
 
 
% Level 2 decomposition
 
[A1,H1,V1,D1] = dwt2(A,Lo_D,Hi_D);
figure;
subplot(2,2,1);
imagesc(A1);
subplot(2,2,2);
imshow(H1);
subplot(2,2,3);
imshow(V1);
subplot(2,2,4);
imshow(D1);
 
