
function img_comp_4k_1(dir_comp)
fprintf('\n%s',dir_comp);
fn_result = fopen([dir_comp '/result_1.txt'],'w');
for k = 1:9
    img_1 = imread(['img_compression_test_4k/img_4k_' num2str(k, '%1d') '.png']);
    img_2 = imread([dir_comp '/cap_' num2str(k, '%1d') '.png']);
    
    img_3 = img_1 - img_2;
    imwrite(img_3, [dir_comp '/img_4k_' num2str(k, '%1d') '_diff.png']);
    
    [peaksnr, snr] = psnr(img_1, img_2);
    [ssimval, ssimmap] = ssim(img_1, img_2);
    fprintf(fn_result, '\nimg %d psnr is %0.2f, ssim is %0.4f',k, peaksnr, ssimval);
    fprintf('\nimg %d psnr is %0.2f, ssim is %0.4f',k, peaksnr, ssimval);
end

fprintf('\n');
