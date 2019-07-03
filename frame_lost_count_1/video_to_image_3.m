
clear;

vname = 'IMG_8102'
mkdir(vname)
shuttleVideo = VideoReader([vname '.mov']);

ii = 0;
cut_w = 350;
cut_h = 100;
ocr_text_1 = [];
while hasFrame(shuttleVideo)
   img_1 = readFrame(shuttleVideo);
   filename = ['img_' sprintf('%04d',ii) '.png'];
   fullname = fullfile(vname,filename);
   img_2 = img_1(1:cut_h,1:cut_w,:);
   ocr_1 = ocr(img_2);
   ocr_text_1 = [ocr_text_1 ocr_1.Text];
   imwrite(img_2,fullname)    % Write out to a JPEG file (img1.jpg, img2.jpg, etc.)
   ii = ii+1;
end

fn_1 = fopen([vname '_ocr.txt'],'w');
fprintf(fn_1, '%s',ocr_text_1);

