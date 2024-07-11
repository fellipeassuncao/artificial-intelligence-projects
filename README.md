# Artificial Intelligence Projects

The portfolio's objective is to demonstrate my capabilities and experience relevant to the AI Developer position, focusing on the development and implementation of AI algorithms, collaboration with teams, and machine learning models integration into web applications.

# Machine Learning Engineering

The Machine Learning Engineering objective is to develop and implement machine learning models that enable the automation of processes and the extraction of value from data. These models are crucial for data-driven decision-making within organizations.

Among the methodologies used in the work of a Machine Learning Engineer are feature selection and engineering, model building and optimization, model validation, and deployment of models into production environments.

It is important to consider essential steps such as defining project requirements, preparing and cleaning the data, selecting appropriate algorithms, training and evaluating models, and implementing models in production systems.

In this repository, we have used a set of projects related to Machine Learning Engineering that use data from various sources, including images and texts.

Among the machine learning algorithms used, we highlight classification algorithms such as SVM (Support Vector Machine), Naive Bayes, and Random Forest.

Among the deep learning algorithms used, we can mention using Convolutional Neural Networks such as VGG16, VGG19, and Resnet50. Additionally, we use Recurrent Neural Networks such as LSTM (Long Short Term Memory) for classification tasks.

# Data Scientist

Another job role related to Artificial intelligence data-based is Data Scientist. The objective of Data Science is to extract insights from raw data to assist in the decision-making of managers in an organization.

Among the methodologies used to conduct the work of a Data Scientist, Machine Learning, Data Mining, Storytelling from data, and Data Preparation are used.

It is worth considering some important steps such as understanding the business, understanding and preparing the data, modeling, evaluation, and after, transforming the insights into actions.

---
# Sumary
- [Computer Vision](#computer-vision)
  - [Ulcer Image Recognition (Medtech Dataset)](#ulcer-image-recognition-medtech-dataset)
  - [Handcrafted Features and Deep Features for Image Classification (Caltech 101 Dataset)](#handcrafted-features-and-deep-features-for-image-classification-caltech-101-dataset)
  - [Handwritten Digit Classification (Mnist Dataset)](#handwritten-digit-classification-mnist-dataset)
- [Natural Language Processing](#natural-language-processing)
  - [Fake News Detector (Fake News Dataset)](#fake-news-detector-fake-news-dataset)
  - [Review Text Classification (Amazon Review Dataset)](#review-text-classification-amazon-review-dataset)
  - [Word Cloud (Top Android Games Dataset)](#word-cloud-top-android-games-dataset)
  - [Analise and Data Visualization](#analise-and-data-visualization)
---
## Computer Vision
### [Ulcer Image Recognition (Medtech Dataset)](https://github.com/fellipeassuncao/ieee-ulcer-segmentation)

We created a new approach to the segmentation of pressure ulcer images. We compared the influence of superpixels (DISF, SLIC, LSC, ERS, SNIC, SEEDS) in the segmentation process in the pre-processing stage and adapted the segmentation algorithms such as IFT and DynIFT in the post-processing stage. The inclusion of the DISF method in the pre-processing stage allowed an increase in the evaluation metrics, compared to previous results. Within the languages and tools that I have been working with, I have adapted a Java program that offers a pipeline for the entire process that uses, among others, the OpenCV library and other computer vision resources. In addition, we use languages such as Matlab and Python to include new methods in the program's pipeline.
Importance 

### [Handcrafted Features and Deep Features for Image Classification (Caltech 101 Dataset)](https://github.com/fellipeassuncao/data-science-projects/tree/main/handcrafted-deep-features)

Recognition of objects from the extraction of color features, associated with the penultimate layer of a CNN such as (Resnet50, VGG16, VGG19). The results showed that the fusion of color descriptors with the second-to-last layer of CNN doesn't contribute to increased accuracy. Thus, CNNs perform well in the feature extraction and object recognition process.

### [Handwritten Digit Classification (Mnist Dataset)](https://github.com/fellipeassuncao/data-science-projects/blob/main/handwritten-digits/HANDWRITTEN-DIGITS.py)

Mnist is a dataset of 60,000 small grayscale 28×28 pixel square images of handwritten digits between 0 and 9. The task is to classify a given image of a handwritten digit into one of 10 classes representing integer values from 0 to 9, inclusive.

This is a widely used classification example and can be considered a "solved" problem, since its accuracy reaches very good values for CNNs, reaching more than 99%. From this example, it is possible to understand the classification pipeline of a model, make an adjustment of the parameters, and propose improvements from the analysis and visualization of the results.

## Natural Language Processing

### [Fake News Detector (Fake News Dataset)](https://github.com/fellipeassuncao/data-science-projects/blob/main/fake-news/NLP_CLASSIFICA%C3%87%C3%83O_DE_FAKE_NEWS_USANDO_DEEP_LEARNING.ipynb)

We can classify texts using Natural Language Processing and different Classification Algorithms based on Deep Learning such as LSTMs and CNNs.

A good reason to use the LSTM is that it is effective at memorizing important information. If we look at other non-neural network classification techniques, they are trained on multiple words as separate inputs which are just words with no real meaning like a sentence, and predicting the class will give the output according to statistics and not according to the meaning. This means that each word is classified into one of the categories.

In LSTM, we can use a multi-word string to find out which class it belongs to. This is very useful when working with Natural Language Processing. If we use proper layers of embedding and encoding in LSTM, the model will be able to figure out the real meaning in the input string and provide the most accurate output class. The following code was elaborated to demonstrate how the text classification is developed using LSTM.

### [Review Text Classification (Amazon Review Dataset)](https://github.com/fellipeassuncao/data-science-projects/blob/main/review-classification/CLASSIFICA%C3%87%C3%83O_DE_TEXTO_USANDO_MACHINE_LEARNING.ipynb)

Text Classification is an automated process of classifying into predefined categories. We can classify emails into spam or non-spam, and news articles into different categories like politics, stock market, sports, etc.

This can be done with the help of Natural Language Processing and different Classification Algorithms like Naive Bayes, SVM, and even Neural Networks in Python.

### [Word Cloud (Top Android Games Dataset)](https://github.com/fellipeassuncao/data-science-projects/blob/main/wordcloud/WORD_CLOUD.ipynb)

This is a small feature to demonstrate the Word Cloud, an electronic image that shows words used in a particular piece of electronic text or series of texts. The words are different sizes according to how often they are used in the text. 

### [Analise and Data Visualization](https://github.com/fellipeassuncao/data-science-projects/blob/main/data-analise/ANALISE_E_VISUALIZA%C3%87%C3%83O_DOS_DADOS.ipynb)

In this project, I work with an example of data analysis and visualization based on a government database. To exemplify the use of the main Python libraries such as Pandas and Numpy, I elaborated some cases in which we can retrieve and manipulate data in a data frame and use visualization features with MatplotLib.



