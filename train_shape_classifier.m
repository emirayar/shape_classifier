%% Generated with AI Assistance
% Görüntü veri setini yükle
imds = imageDatastore('shapes_dataset', ...
    'IncludeSubfolders', true, ...
    'LabelSource', 'foldernames');

% Özellik çıkarımı
bag = bagOfFeatures(imds);

% Özelliklere dayalı sınıflandırıcı eğitimi
trainingFeatures = encode(bag, imds);
classifier = fitcecoc(trainingFeatures, imds.Labels);

% Sınıflandırıcıyı kaydet
trainedClassifier = classifier;
save shapeClassifier.mat trainedClassifier bag