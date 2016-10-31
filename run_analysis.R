library(dplyr)

run_analysis <- function(data_dir = ".") {
  
  data_directory <- paste(data_dir, "/UCI HAR Dataset", sep = "")
  
  read_and_prepare_data <- function(data_set_file_name, activity_id_file_name, subject_id_file_name, activity_labels, feature_names) {
 
    #Read train data set
    data_set <-
      read.fwf(
        data_set_file_name,
        header = FALSE,
        col.names = feature_names,
        widths = rep.int(16, length(feature_names)),
        stringsAsFactors = FALSE,
        colClasses = rep("numeric", length(feature_names))
      )
    names(data_set) <- gsub("[.]+", "_", names(data_set))
    
    #Read train activity ids
    data_activity_id <-
      read.csv(
        activity_id_file_name,
        header = FALSE,
        col.names = "activity_id",
        stringsAsFactors = FALSE
      )
    
    #Read train subject ids
    data_subject_id <-
      read.csv(
        subject_id_file_name,
        header = FALSE,
        col.names = "subject_id",
        stringsAsFactors = FALSE
      )
    
    data_set %>%
      #Leave only columns with means and standard deviations
      select(contains("_mean_"), contains("_std_")) %>%
      #Get data together
      bind_cols(data_subject_id) %>%
      bind_cols(data_activity_id) %>%
      #Add activity labels
      inner_join(activity_labels, by = "activity_id") %>%
      select(-activity_id)
      
  }
  
  #Read activity labels
  activity_labels <- read.csv(paste(data_directory, "/activity_labels.txt", sep = ""), sep = " ", header = FALSE, col.names = c("activity_id", "activity"), stringsAsFactors = FALSE)
  
  #Read feature names
  features <- read.csv(paste(data_directory, "/features.txt", sep = ""), sep = " ", header = FALSE, col.names = c("id", "name"), stringsAsFactors = FALSE)
  feature_names <- features$name
  
  #Read data
  train_data <-
    read_and_prepare_data(
      paste(data_directory, "/train/X_train.txt", sep = ""),
      paste(data_directory, "/train/y_train.txt", sep = ""),
      paste(data_directory, "/train/subject_train.txt", sep = ""),
      activity_labels,
      feature_names
    )
  test_data <-
    read_and_prepare_data(
      paste(data_directory, "/test/X_test.txt", sep = ""),
      paste(data_directory, "/test/y_test.txt", sep = ""),
      paste(data_directory, "/test/subject_test.txt", sep = ""),
      activity_labels,
      feature_names
    )
  
  #Union the datasets
  result <- train_data %>%
    bind_rows(test_data) %>%
    group_by(activity, subject_id) %>%
    summarise_each(funs(mean))
  
  
  write.table(result, file = "./tidy_data_set.txt")
  
  result
}
