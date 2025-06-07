function shape = manual_shape_detector(image_path)
    % Görüntüyü oku
    img = imread(image_path);

    % Renkli ise griye dönüştür (im2gray her türlü çalışır - yeni MATLAB sürümleri için)
    gray = im2gray(img);

    % Görüntüyü binary (siyah-beyaz) hale getir
    bw = imbinarize(gray);
    bw = imcomplement(bw);  % Nesne beyaz olsun diye ters çeviriyoruz (arka plan beyaz)

    % Kenar koordinatlarını bul
    [y_coords, x_coords] = find(bw);
    xmin = min(x_coords);
    xmax = max(x_coords);
    ymin = min(y_coords);
    ymax = max(y_coords);

    % Genişlik ve yükseklik
    width = xmax - xmin;
    height = ymax - ymin;

    % Orta noktadaki çizgilerden kalınlık ölç
    mid_x = round((xmin + xmax)/2);
    mid_y = round((ymin + ymax)/2);

    vert_line = bw(:, mid_x);
    horz_line = bw(mid_y, :);

    vert_thickness = sum(vert_line);
    horz_thickness = sum(horz_line);

    % Daire mi kare mi tespit et
    ratio = abs(vert_thickness - horz_thickness) / max(vert_thickness, horz_thickness);
    tolerance = 0.15;

    if ratio < tolerance
        shape = 'Square';
    else
        shape = 'Circle';
    end

    % Sonucu görselleştir
    figure; imshow(bw); hold on;
    rectangle('Position', [xmin ymin width height], 'EdgeColor', 'g', 'LineWidth', 2);
    title(['Detected shape (Manual): ', shape]);
end
