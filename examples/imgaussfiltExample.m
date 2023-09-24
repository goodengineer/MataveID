% Close all
close all

% Read image
image = imread(fullfile('..', 'data', 'campera.png'));

% Turn to grey scale
if(size(image, 3) == 3)
  image = rgb2gray(image);
end

% Select sigma
sigma = 2;

% Compute gradients and orientations
E = mi.imgaussfilt(image, sigma);

% Show original image
subplot(1, 2, 1);
imshow(image);
title('Original image');

% Show gaussian image
subplot(1, 2, 2);
imshow(uint8(E));
title('Gaussian image');
