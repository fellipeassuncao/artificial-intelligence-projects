
% input: img to be analyzed and extract 2 first moments from each R,G,B
% output: 1x6 vector containing the 2 first color momenst from each R,G,B
% channel

function colorMoments = cm(img)


% extract color channels
R = double(img(:, :, 1));
G = double(img(:, :, 2));
B = double(img(:, :, 3));
% compute 2 first color moments from each channel
meanR = mean( R(:) );
stdR  = std( R(:) );
meanG = mean( G(:) );
stdG  = std( G(:) );
meanB = mean( B(:) );
stdB  = std( B(:) );
% construct output vector
colorMoments = [meanR stdR meanG stdG meanB stdB];
% clear workspace
clear('R', 'G', 'B', 'meanR', 'stdR', 'meanG', 'stdG', 'meanB', 'stdB');

end