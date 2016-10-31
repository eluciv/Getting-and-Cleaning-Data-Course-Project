# Getting and Cleaning Data Course Project
This repository contains a result of preparation of the final assignment for Coursera's "Getting and Cleaning Data" course. The contents is:

* tidy_data_set.txt - a serialized data set. It can be loaded with the following command:
    read.table("./tidy_data_set.txt")
* run_analysis.R - an R script that can be used to produce the tidy data set from the data set from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones .
* CodeBook.md - a code book describing this tidy data set. 

The tidy data set was obtained in the following way:
1. Download data from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
2. Unzip it in some directory.
3. Load the "run_analysis.R" script with the command
    source('run_analysis.R')
4. Run the "run_analysis" function passing the data directory as a parameter (or nothing - if the data are in your working directory). For example:
    run_analysis("./data")