%NEGATION OF IMAGE
clc;
clear all;
close all;
myImage=imread('your_image_path');
myGrayImage=rgb2gray(myImage);
myImage1= imresize(myGrayImage,[255,255]);
imshow(myImage1);
maxgraylevel = max(max(myImage1));
display(maxgraylevel);
 
myImage2 = maxgraylevel - myImage1;
imshow(myImage2);

%THRESHOLDING OF IMAGE
 
clc;
clear all;
close all;
myImage=imread('your_image_path');
myGrayImage=rgb2gray(myImage);
myImage1= imresize(myGrayImage,[255,255]);
imshow(myImage1);
figure;
t = 120;
for i=1:255
    for j=1:255
        if myImage1(i,j)<t 
            myImage1(i,j)=0;
        end
        if myImage1(i,j)>t
            myImage1(i,j)=255;
        end
    end
end
 
imshow(myImage1);

%CONTRAST STRETCHING OF IMAGE
 
clc;
clear all;
close all;
myImage=imread('your_image_path');
myGrayImage=rgb2gray(myImage);
myImage1= imresize(myGrayImage,[255,255]);
imshow(myImage1);
figure;
a=0.4;
b=1.4;
g=0.6;
 
r1=60;
r2=130;
s1=65;
s2=140;
 
for i=1:255
    for j=1:255
        if myImage1(i,j)<=r1 
            myImage1(i,j)=myImage1(i,j)*a;
        
        elseif myImage1(i,j)>r1 && myImage1(i,j)<=r2
             myImage1(i,j)=b*(myImage1(i,j)-r1)+s1;
        else
             myImage1(i,j)=g*(myImage1(i,j)-r2)+s2;   
        end
    end
end
imshow(myImage1);
title('Contrast stretched image');

%GRAY LEVEL SLICING OF IMAGE WITH AND WITHOUT BACKGROUND
 
clc;
clear all;
close all;
myImage=imread('your_image_path');
myGrayImage=rgb2gray(myImage);
myImage1= imresize(myGrayImage,[255,255]);
myImage2=myImage1;
imshow(myImage1);
figure;
a=80;
b=170;
 
%Gray level slicing without background
for i=1:255
    for j=1:255
        if myImage1(i,j)>=a && myImage1(i,j)<=b 
            myImage1(i,j)=255;
        else
            myImage1(i,j)=0;
        end
    end
end
 
imshow(myImage1);
title('Gray level slicing without background');
 
figure;

%Gray level slicing with background
for i=1:255
    for j=1:255
        if myImage2(i,j)>=a && myImage2(i,j)<=b 
            myImage2(i,j)=255;
       
        end
    end
end
 
imshow(myImage2);
title('Gray level slicing with background');

%BIT PLANE SLICING OF IMAGE 
clc;
clear all;
close all;
myImage=imread('your_image_path');
myGrayImage=rgb2gray(myImage);
myImage1= imresize(myGrayImage,[255,255]);
imshow(myImage1);
figure;
 
c1= bitget(myImage1,1);
c2= bitget(myImage1,2);
c3= bitget(myImage1,3);
c4= bitget(myImage1,4);
c5= bitget(myImage1,5);
c6= bitget(myImage1,6);
c7= bitget(myImage1,7);
c8= bitget(myImage1,8);
imshow(logical(c1));
title('Bit plane 1');
figure;
imshow(logical(c2));
title('Bit plane 2');
figure;
imshow(logical(c3));
title('Bit plane 3');
figure;
imshow(logical(c4));
title('Bit plane 4');
figure;
imshow(logical(c5));
title('Bit plane 5');
figure;
imshow(logical(c6));
title('Bit plane 6');
figure;
imshow(logical(c7));
title('Bit plane 7');
figure;
imshow(logical(c8));
title('Bit plane 8');
