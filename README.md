# Getting and Cleaning Data Course
### This is a Readme file created for the assignment of Coursera Getting and Cleaning Data course. 

#### Project Description
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project.

#### Dataset

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The variables in the data X are sensor signals measured with waist-mounted smartphone from 30 subjects. The variable in the data Y indicates activity type the subjects performed during recording (coded as 1-6).

#### Data transformations

The training and test data were merged and the merged dataset subsetted to extract only the measurements on the mean and standard deviation for each measurement. As the raw dataset have confusing variable names, I renamed all the variables of interest to make them clearer. The variables were renamed accordingly the principles of tidy data which are (descriptive, small letters and without polluting characters (e.g.parenthesis)). 

After all the transformations, I create an independent tidy data set with the average of each variable for each activity and each subject (called "tidydata.txt").

#### What you will find in this Repo

_1. A Readme file, with general explanations about the data and files_;

_2. An R script with the codes of the steps for accessing, transforming and tdying the dataset_;

_3. A CodeBook.md with the descriptions of the variables in tidy dataset_;

_4. A new tidy file called tidydata.txt_.

#### How to create a tidy data set

* **Download the data from the repository, unzip it and load the files into your R working directory;**
* **Install the following packages: plyr, dplyr, readr**
* **Run the script available in this repo;**
* **Check the CodeBook to see the variables descriptions and metadata;**
* **Check the final tidy file in this repository.**
