function ColorHistogram = ch(img)
%Split into RGB Channels
    % extract color channels
    Red = img(:, :, 1);
    Green = img(:, :, 2);
    Blue = img(:, :, 3);
    %Get histValues for each channel
    [yRed, x] = imhist(Red);
    [yGreen, x] = imhist(Green);
    [yBlue, x] = imhist(Blue);
    
    %Plot them together in one plot
    plot(x, yRed, 'Red', x, yGreen, 'Green', x, yBlue, 'Blue');
   
end


