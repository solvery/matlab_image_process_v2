
workingDir = 'img_avi';
mkdir(workingDir)


shuttleVideo = VideoReader('rand3_fcount__1080_f60.avi');

ii = 0;

while hasFrame(shuttleVideo)
   img = readFrame(shuttleVideo);
   filename = ['img_rand3_fcount_' sprintf('%04d',ii) '.bmp'];
   fullname = fullfile(workingDir,filename);
   imwrite(img,fullname)    % Write out to a JPEG file (img1.jpg, img2.jpg, etc.)
   ii = ii+1;
end


