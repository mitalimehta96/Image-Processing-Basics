                                                              3x3 Mask
% Applying LPF, HPF and Median Filter for Gaussian Noise
clc;
clear all;
close all;
myImage=imread('mitali.jpg');
myGrayImage=rgb2gray(myImage);
myImage1= imresize(myGrayImage,[255,255]);
imshow(myImage1);
title('ORIGINAL IMAGE');
figure;
Image = imnoise(myImage1,'gaussian');
imshow(Image);
title('IMAGE WITH GAUSSIAN NOISE');
figure;
Image = double(Image);
Image1 = Image;
% Low pass filter
for i=2:254
    for j=2:254
       Image1(i,j)=Image(i,j)/9+Image(i-1,j)/9+Image(i+1,j)/9+Image(i,j-1)/9+Image(i,j+1)/9+Image(i-1,j-1)/9+Image(i-1,j+1)/9+Image(i+1,j+1)/9+ Image(i+1,j-1)/9;
    end
end
 
Image2=Image;
%High pass filter
for i=2:254
    for j=2:254
       Image2(i,j)=8*Image(i,j)/9-Image(i-1,j)/9-Image(i+1,j)/9-Image(i,j-1)/9-Image(i,j+1)/9-Image(i-1,j-1)/9-Image(i-1,j+1)/9-Image(i+1,j+1)/9- Image(i+1,j-1)/9;
    end
end
figure;
Image1=uint8(Image1);
imshow(Image1);
title('LOW PASS FILTER FOR GAUSSIAN NOISE');
figure;
Image2=uint8(Image2);
imshow(Image2);
title('HIGH PASS FILTER FOR GAUSSIAN NOISE');
 
%Median Filter
Image3 = Image;
for i=2:254
    for j=2:254
    imgarr = [Image(i,j) Image(i-1,j) Image(i+1,j) Image(i,j-1) Image(i,j+1) Image(i-1,j-1) Image(i-1,j+1) Image(i+1,j+1) Image(i+1,j-1)];
    imgarr1 = sort(imgarr);
    Image3(i,j) = imgarr1(5);                  
    end
end
figure;
Image3=uint8(Image3);
imshow(Image3);
title('MEDIAN FILTER FOR GAUSSIAN NOISE');



% Applying LPF, HPF and Median Filter for SALT AND PEPPER Noise
clc;
clear all;
close all;
myImage=imread('mitali.jpg');
myGrayImage=rgb2gray(myImage);
myImage1= imresize(myGrayImage,[255,255]);
imshow(myImage1);
title('ORIGINAL IMAGE');
figure;
Image = imnoise(myImage1,'salt & pepper');
imshow(Image);
title('IMAGE WITH SALT AND PEPPER NOISE');
figure;
Image = double(Image);
Image1 = Image;
% Low pass filter
for i=2:254
    for j=2:254
       Image1(i,j)=Image(i,j)/9+Image(i-1,j)/9+Image(i+1,j)/9+Image(i,j-1)/9+Image(i,j+1)/9+Image(i-1,j-1)/9+Image(i-1,j+1)/9+Image(i+1,j+1)/9+ Image(i+1,j-1)/9;
    end
end
 
Image2=Image;
%High pass filter
for i=2:254
    for j=2:254
       Image2(i,j)=8*Image(i,j)/9-Image(i-1,j)/9-Image(i+1,j)/9-Image(i,j-1)/9-Image(i,j+1)/9-Image(i-1,j-1)/9-Image(i-1,j+1)/9-Image(i+1,j+1)/9- Image(i+1,j-1)/9;
    end
end
figure;
Image1=uint8(Image1);
imshow(Image1);
title('LOW PASS FILTER FOR SALT AND PEPPER NOISE');
figure;
Image2=uint8(Image2);
imshow(Image2);
title('HIGH PASS FILTER FOR SALT AND PEPPER NOISE');
 
%Median Filter
Image3 = Image;
for i=2:254
    for j=2:254
    imgarr = [Image(i,j) Image(i-1,j) Image(i+1,j) Image(i,j-1) Image(i,j+1) Image(i-1,j-1) Image(i-1,j+1) Image(i+1,j+1) Image(i+1,j-1)];
    imgarr1 = sort(imgarr);
    Image3(i,j) = imgarr1(5);                  
    end
end
figure;
Image3=uint8(Image3);
imshow(Image3);
title('MEDIAN FILTER FOR SALT AND PEPPER NOISE');

                                                              5x5 Mask
% Applying LPF, HPF and Median Filter for Gaussian Noise 

clc;
clear all;
close all;
myImage=imread('mitali.jpg');
[rows, cols] = size(myImage);
myGrayImage=rgb2gray(myImage);
myImage1 = imresize(myGrayImage,[255,255]);
[rows, cols] = size(myImage1);
imshow(myImage1)
title('ORIGINAL IMAGE');
 
myImagenoise1 = imnoise(myImage1,'gaussian');
figure;
imshow(myImagenoise1)
title('IMAGE WITH GAUSSIAN NOISE ');
 
myImagen = double(myImagenoise1);
 
myImage2 = myImagen;
 
%Low Pass Filter
for i = 3:253
    for j = 3:253
        myImage2(i,j) = myImagen(i,j-1)/25 + myImagen(i,j+1)/25 + myImagen(i-1,j)/25 + myImagen(i+1,j)/25 + myImagen(i-1,j-1)/25 + myImagen(i+1,j-1)/25 + myImagen(i-1,j+1)/25 + myImagen(i+1,j+1)/25 + myImagen(i,j)/25 + myImagen(i-1,j-2)/25 + myImagen(i-1,j+2)/25 + myImagen(i-2,j+2)/25 + myImagen(i-2,j-2)/25 + myImagen(i+1,j-2)/25 + myImagen(i+1,j+2)/25 + myImagen(i+2,j+2)/25 + myImagen(i+2,j-2)/25 + myImagen(i+2,j+1)/25 + myImagen(i+2,j-1)/25 + myImagen(i-2,j+1)/25 + myImagen(i-2,j-1)/25 + myImagen(i-2,j)/25 + myImagen(i-2,j)/25 + myImagen(i,j-2)/25 + myImagen(i,j+2)/25;
    end;
end;
 
myImage2 = uint8(myImage2);
figure;
imshow(myImage2)
title('5*5 Low Pass Filter on Gaussian noise');
 
myImage3 = myImagen;
 
%High Pass Filter
for i = 3:253
    for j = 3:253
        myImage3(i,j) = - myImagen(i,j-1)/25 - myImagen(i,j+1)/25 - myImagen(i-1,j)/25 - myImagen(i+1,j)/25 - myImagen(i-1,j-1)/25 - myImagen(i+1,j-1)/25 - myImagen(i-1,j+1)/25 - myImagen(i+1,j+1)/25 + (8*myImagen(i,j)/25) - myImagen(i-1,j-2)/25 - myImagen(i-1,j+2)/25 + (0*myImagen(i-2,j+2)/25) + (0*myImagen(i-2,j-2)/25) - myImagen(i+1,j-2)/25 - myImagen(i+1,j+2)/25 + (0*myImagen(i+2,j+2)/25) + (0*myImagen(i+2,j-2)/25) - myImagen(i+2,j+1)/25 - myImagen(i+2,j-1)/25 - myImagen(i-2,j+1)/25 - myImagen(i-2,j-1)/25 + (2*myImagen(i-2,j)/25) + (2*myImagen(i-2,j)/25) + (2*myImagen(i,j-2)/25) + (2*myImagen(i,j+2)/25);
    end;
end;
 
myImage3 = uint8(myImage3);
figure;
imshow(myImage3)
title('5*5 High Pass Filter on Gaussian noise');
 
myImage4 = myImagen;
 
%Median Filter
for i = 3:253
    for j = 3:253
        a = [myImagen(i,j-1) myImagen(i,j+1) myImagen(i-1,j) myImagen(i+1,j) myImagen(i-1,j-1) myImagen(i+1,j-1) myImagen(i-1,j+1) myImagen(i+1,j+1) myImagen(i,j) myImagen(i-1,j-2) myImagen(i-1,j+2) myImagen(i-2,j+2) myImagen(i-2,j-2) myImagen(i+1,j-2) myImagen(i+1,j+2) myImagen(i+2,j+2) myImagen(i+2,j-2) myImagen(i+2,j+1) myImagen(i+2,j-1) myImagen(i-2,j+1) myImagen(i-2,j-1) myImagen(i-2,j) myImagen(i-2,j) myImagen(i,j-2) myImagen(i,j+2)];
        b = sort(a);
        myImage4(i,j) = b(13);
    end;
end;
myImage4 = uint8(myImage4);
figure;
imshow(myImage4)
title('5*5 Median Filter on Gaussian noise');

% Applying LPF, HPF and Median Filter for SALT AND PEPPER Noise

clc;
clear all;
close all;
myImage=imread('mitali.jpg');
[rows, cols] = size(myImage);
myGrayImage=rgb2gray(myImage);
myImage1 = imresize(myGrayImage,[255,255]);
[rows, cols] = size(myImage1);
imshow(myImage1)
title('ORIGINAL IMAGE');
 
myImagenoise1 = imnoise(myImage1,'salt & pepper');
figure;
imshow(myImagenoise1)
title('IMAGE WITH SALT AND PEPPER NOISE');
 
myImagen = double(myImagenoise1);
 
myImage2 = myImagen;
 
%Low Pass Filter
for i = 3:253
    for j = 3:253
        myImage2(i,j) = myImagen(i,j-1)/25 + myImagen(i,j+1)/25 + myImagen(i-1,j)/25 + myImagen(i+1,j)/25 + myImagen(i-1,j-1)/25 + myImagen(i+1,j-1)/25 + myImagen(i-1,j+1)/25 + myImagen(i+1,j+1)/25 + myImagen(i,j)/25 + myImagen(i-1,j-2)/25 + myImagen(i-1,j+2)/25 + myImagen(i-2,j+2)/25 + myImagen(i-2,j-2)/25 + myImagen(i+1,j-2)/25 + myImagen(i+1,j+2)/25 + myImagen(i+2,j+2)/25 + myImagen(i+2,j-2)/25 + myImagen(i+2,j+1)/25 + myImagen(i+2,j-1)/25 + myImagen(i-2,j+1)/25 + myImagen(i-2,j-1)/25 + myImagen(i-2,j)/25 + myImagen(i-2,j)/25 + myImagen(i,j-2)/25 + myImagen(i,j+2)/25;
    end;
end;
 
myImage2 = uint8(myImage2);
figure;
imshow(myImage2)
title('5*5 Low Pass Filter on Salt & Pepper noise');
 
myImage3 = myImagen;
 
%High Pass Filter
for i = 3:253
    for j = 3:253
        myImage3(i,j) = - myImagen(i,j-1)/25 - myImagen(i,j+1)/25 - myImagen(i-1,j)/25 - myImagen(i+1,j)/25 - myImagen(i-1,j-1)/25 - myImagen(i+1,j-1)/25 - myImagen(i-1,j+1)/25 - myImagen(i+1,j+1)/25 + (8*myImagen(i,j)/25) - myImagen(i-1,j-2)/25 - myImagen(i-1,j+2)/25 + (0*myImagen(i-2,j+2)/25) + (0*myImagen(i-2,j-2)/25) - myImagen(i+1,j-2)/25 - myImagen(i+1,j+2)/25 + (0*myImagen(i+2,j+2)/25) + (0*myImagen(i+2,j-2)/25) - myImagen(i+2,j+1)/25 - myImagen(i+2,j-1)/25 - myImagen(i-2,j+1)/25 - myImagen(i-2,j-1)/25 + (2*myImagen(i-2,j)/25) + (2*myImagen(i-2,j)/25) + (2*myImagen(i,j-2)/25) + (2*myImagen(i,j+2)/25);
    end;
end;
 
myImage3 = uint8(myImage3);
figure;
imshow(myImage3)
title('5*5 High Pass Filter on Salt & Pepper noise');
 
myImage4 = myImagen;
 
%Median Filter
for i = 3:253
    for j = 3:253
        a = [myImagen(i,j-1) myImagen(i,j+1) myImagen(i-1,j) myImagen(i+1,j) myImagen(i-1,j-1) myImagen(i+1,j-1) myImagen(i-1,j+1) myImagen(i+1,j+1) myImagen(i,j) myImagen(i-1,j-2) myImagen(i-1,j+2) myImagen(i-2,j+2) myImagen(i-2,j-2) myImagen(i+1,j-2) myImagen(i+1,j+2) myImagen(i+2,j+2) myImagen(i+2,j-2) myImagen(i+2,j+1) myImagen(i+2,j-1) myImagen(i-2,j+1) myImagen(i-2,j-1) myImagen(i-2,j) myImagen(i-2,j) myImagen(i,j-2) myImagen(i,j+2)];
        b = sort(a);
        myImage4(i,j) = b(13);
    end;
end;
myImage4 = uint8(myImage4);
figure;
imshow(myImage4)
title('5*5 Median Filter on Salt & Pepper noise');
