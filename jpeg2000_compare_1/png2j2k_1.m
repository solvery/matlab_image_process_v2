clear;
S = dir('img_orig/*.png');
N = {S.name};
for k = 1:numel(N);
    img_fn = N{k}
    [a,img_fn_name, c] = fileparts(img_fn);
    img_1 = imread(['img_orig/' img_fn]);
    imwrite(img_1, [img_fn_name '.j2k'],'CompressionRatio',13);
    img_2 = imread([img_fn_name '.j2k']);
    imwrite(img_2, [img_fn_name '_j2k.png']);
end
