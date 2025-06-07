function shape = ai_shape_classifier(image_path)
    %% Generated with AI Assistance
    % Eğitilmiş sınıflandırıcıyı ve özellik çıkarıcıyı yükle
    load shapeClassifier.mat % İçinde: trainedClassifier, bag

    % Görüntüyü oku
    img = imread(image_path);
    
    % Özellik çıkar
    feature = encode(bag, img);
    
    % Tahmin et
    label = predict(trainedClassifier, feature);
    
    % Sonucu göster
    figure; imshow(img); title(['AI Detected Shape: ', char(label)]);
    shape = char(label);
end