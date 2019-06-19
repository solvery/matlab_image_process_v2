S = dir('*.gif');
N = {S.name};
for k = 1:numel(N);
    img_fn = N{k};
    [a,img_fn_name, c] = fileparts(img_fn);
    img_1 = double(imread(img_fn)/255.0);
    imwrite(img_1, [img_fn_name '.png']);
end
