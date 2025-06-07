AI & MANUAL SHAPE DETECTION PROJECT - MATLAB

Prepared by: [Emir Ayar]
Date: [1.06.2025]

--------------------------------------------------------
📁 PROJECT CONTENTS
--------------------------------------------------------

This ZIP file contains the following:

1. manual_shape_detector.m         --> Manual shape detection script
2. ai_shape_classifier_train.m     --> AI classifier training script
3. ai_shape_classifier_test.m      --> AI classifier testing script
4. images/                         --> Test and training images
    - train/
        - circle/ (images for training circle class)
        - square/ (images for training square class)
        - triangle/ (images for training triangle class)
    - test/
        - image1.png
        - image2.png
        ...
5. shapeClassifier.mat             --> Trained AI model (created by training script)
6. README.txt                      --> Instructions (this file)

--------------------------------------------------------
🚀 HOW TO RUN THE PROJECT
--------------------------------------------------------

Step 1: Prepare training images
-----------------------------------
- Place 10-20 images per class in:
  --> images/train/circle/
  --> images/train/square/
  --> images/train/triangle/

- All images must have a white background and a centered colored shape.

Step 2: Train AI classifier
-------------------------------
Open MATLAB and run:

>> ai_shape_classifier_train

This will:
- Train an image classifier (Bag of Features + SVM)
- Save it as 'shapeClassifier.mat'

Step 3: Test with AI classifier
-----------------------------------
Place test images in: `images/test/`

Then run:

>> ai_shape_classifier_test

This will:
- Load the trained classifier
- Classify test images using AI
- Display results and print overall accuracy

Step 4: Run manual detection
-------------------------------
To test an image manually, run:

>> manual_shape_detector('images/test/image1.png')

This will:
- Detect object edges and calculate center-line thickness
- Guess if shape is square or circle
- Show result on figure

(Note: Manual code does not yet support triangle detection)

--------------------------------------------------------
📊 PERFORMANCE COMPARISON
--------------------------------------------------------

- AI classifier tests multiple images and prints a total accuracy.
- Manual method is run one-by-one and results are visually checked.

Use at least 10 test images for both methods and compare the number of correct detections.

--------------------------------------------------------
❗ NOTES
--------------------------------------------------------

- Make sure images are all the same format (e.g., PNG or JPG)
- Use white background and clear, non-blurry shapes
- Run scripts from the main project folder

Enjoy!
