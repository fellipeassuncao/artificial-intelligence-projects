function [ colorHistFeatures ] = colorHist(img)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
colorHistFeatures = imhist(img,256);
colorHistFeatures = colorHistFeatures.';
end

