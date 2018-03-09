%DCT, IDCT, DST and IDST
clc;
clear all;
close all;
myImage=imread('mitali.jpg');
myGrayImage=rgb2gray(myImage);
f= imresize(myGrayImage,[256,256]);
f = double(f);
imshow(uint8(f));
title('ORIGINAL IMAGE');
c =zeros(256,256);
 
%DCT
 
for i=1:256
    c(1,i)= 1/sqrt(256);
end
 
for i=2:256
    for j=1:256
        c(i,j)=sqrt(2/256)*cos((pi*((2*(j+1))*i)/(2*256)));
    end
end
dct = c * f * transpose(c);
figure;
imshow(uint8(dct));
title('DCT');
 
%IDCT
 
idct = transpose(c) * dct * c;
 
figure;
imshow(uint8(idct));
title('IDCT');
 
 
%DST
 
for i=1:256
    for j=1:256
        s(i,j)=sqrt(2/257)*sin((pi*((i+1)*(j+1))/(257)));
    end
end
dst = s * f * transpose(s);
figure;
imshow(uint8(dst));
title('DST');
 
%IDST
 
idst = transpose(s) * dst * s;
 
figure;
imshow(uint8(idst));
title('IDST');
