% Felipe Moreira de Assunção
% Teste comparativo de descritores de cor

% clear all; close all; clc;

% Use this block to read an image dataset
pastaclasses = dir('/home/fassuncao/Downloads/101_ObjectCategories') %pass to this variable your complet data set path
m = length (pastaclasses);
count=1;
% Features extraction
for i = 103:m
    
    pastaImagens=dir(['/home/fassuncao/Downloads/101_ObjectCategories/',pastaclasses(i, 1).name]);
    n = length (pastaImagens);
  
    i
    for j = 3:n
    j
    
    [img, map]=imread(['/home/fassuncao/Downloads/101_ObjectCategories/',pastaclasses(i, 1).name,'/',pastaImagens(j, 1).name]);
    
    if(size(img, 3) == 1) % image is grayscale
      img = cat(3, img, img, img);
    end
    
    % train and test   
    treino= round((n*30)/100);
    
    if(j<=treino)
    result_rgbhist_treino(count,:)=rgbhist(img,1,256);
    %result_hog_treino(count,:)=hog(img);
    result_cm_treino(count,:)=cm(img);
    result_cac_treino(count,:)=cac(img,[1 3])';
    result_ccv_treino=ccv(img);
    result_ccvNovo_treino(count,:)=horzcat(result_ccv_treino(1,:), result_ccv_treino(2,:));
    result_iccv_treino=iccv(img);
    result_iccvNovo_treino(count,:)=horzcat(result_iccv_treino(1,:), result_iccv_treino(2,:), result_iccv_treino(3,:), result_iccv_treino(4,:));
    classe_treino(count,:)=cellstr(pastaclasses(i, 1).name);
    count=count+1;
        
    else
    result_rgbhist_teste(count,:)=rgbhist(img,1,256);    
    %result_hog_teste(count,:)=hog(img);
    result_cm_teste(count,:)=cm(img);
    result_cac_teste(count,:)=cac(img,[1 3])';
    result_ccv_teste=ccv(img);
    result_ccvNovo_teste(count,:)=horzcat(result_ccv_teste(1,:), result_ccv_teste(2,:));
    result_iccv_teste=iccv(img);
    result_iccvNovo_teste(count,:)=horzcat(result_iccv_teste(1,:), result_iccv_teste(2,:), result_iccv_teste(3,:), result_iccv_teste(4,:));
    count=count+1;
    end
    end
end
% save train data
save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/treino/rgbhist_treino.mat', 'result_rgbhist_treino');
%save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/treino/hog_treino.mat', 'result_hog_treino');
save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/treino/cac_treino.mat', 'result_cac_treino');
save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/treino/ccvnovo_treino.mat', 'result_ccvNovo_treino');
save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/treino/cm_treino.mat', 'result_cm_treino');
save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/treino/iccv_treino.mat', 'result_iccvNovo_treino');

% save test data
save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/teste/rgbhist_teste.mat', 'result_rgbhist_teste');
%save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/teste/hog_teste.mat', 'result_hog_teste');
save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/teste/cac_teste.mat', 'result_cac_teste');
save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/teste/ccvnovo_teste.mat', 'result_ccvNovo_teste');
save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/teste/cm_teste.mat', 'result_cm_treino');
save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/teste/iccv_teste.mat', 'result_iccvNovo_teste');

% save class names
save('/home/fassuncao/Documentos/fassuncao/matlab/entrada/classes.mat', 'classe_treino');

% SVM
svm_result_rgbhist = multisvm(result_rgbhist_treino,classe_treino,result_rgbhist_teste);
svm_result_cm = multisvm(result_cm_treino,classe_treino,result_cm_teste);
