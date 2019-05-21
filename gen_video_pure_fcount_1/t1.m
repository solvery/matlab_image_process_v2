I = rand(1080, 1920, 3);
img_1 = rand(1080, 1920, 3);

position = [192 108; 1152 108;  192 648;  1152 648];
value = [555 123 1 2 ];

RGB = insertText(I,position,value);

figure
imshow(RGB),title('Numeric values');
