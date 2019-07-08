clear all;

for k = 1:9
    img_1 = imread(['img_4k_' num2str(k, '%1d') '.png']);
    img_2 = imread(['sdvoe_genlock_' num2str(k, '%1d') '.png']);
    
    img_3 = img_1 - img_2;
    imwrite(img_3, ['img_4k_' num2str(k, '%1d') '_diff.png']);
    
    [peaksnr, snr] = psnr(img_1, img_2);
    [ssimval, ssimmap] = ssim(img_1, img_2);
    fprintf('\nimg %d pnsr is %0.2f, ssim is %0.4f',k, peaksnr, ssimval);
end

fprintf('\n');