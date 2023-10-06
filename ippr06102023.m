
%Smoothing
%https://www.mathworks.com/help/images/ref/imfilter.html#btsmcj2-1-h

x = imread('standard_test_images/cameraman.tif');
subplot(2,4,1);
imshow(x);
title('Original');

f1=imfilter(x,(1/9*ones(3,3)));
subplot(2,4,2);
imshow(f1);
title('Smoothing Filter - a');

f2=imfilter(x,(1/10*[1 1 1; 1 2 1; 1 1 1]));
subplot(2,4,3);
imshow(f2);
title('Smoothing Filter - b');

f3=imfilter(x,(1/16*[1 2 1; 2 4 2; 1 2 1]));
subplot(2,4,4);
imshow(f3);
title('Smoothing Filter - c');


%Sharpening
f4=imfilter(x,[-1 -1 -1; -1 9 -1; -1 -1 -1]);
subplot(2,4,5);
imshow(f4);
title('Sharpening Filter - a');

f5=imfilter(x,[1 -2 1; -2 5 -2; 1 -2 1]);
subplot(2,4,6);
imshow(f5);
title('Sharpening Filter - b');

f6=imfilter(x,[0 -1 0; -1 5 -1; 0 -1 0]);
subplot(2,4,7);
imshow(f6);
title('Sharpening Filter - c');

