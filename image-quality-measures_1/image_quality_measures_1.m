% https://www.mathworks.com/help/images/image-quality-metrics.html

img_1 = imread('img_17.png');
img_2 = imread('img_17_p565.png');

err = immse(img_1, img_2);
fprintf('\n The mean-squared error is %0.4f\n', err);

[peaksnr, snr] = psnr(img_1, img_2);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr);
fprintf('\n The SNR value is %0.4f \n', snr);

[ssimval, ssimmap] = ssim(img_1, img_2);
fprintf('The SSIM value is %0.4f.\n',ssimval);

figure, imshow(ssimmap,[]);
title(sprintf('ssim Index Map - Mean ssim Value is %0.4f',ssimval));

score_1 = piqe(img_1);
score_2 = piqe(img_2);

figure
montage({img_1, img_2},'Size',[1 2])
title({['Original Image: PIQE score = ', num2str(score_1), '    |    New Image: PIQE score = ', num2str(score_2) ]}, 'FontSize',12)