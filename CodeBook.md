CodeBook
========
This codebook describes the data source  and output dataset "tidy.txt".

## Data Source
Original dataset was taken from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Source description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

##Output dataset

Output dataset is stored in tidy.txt file.
##Variables

###Activity.Name - name of activity
with possible values:
- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

###Subject.Id - identifies person who performed activity

Numeric identifier within range 1-30

###Measurement variables

each variable is average of original variable for each activity and subject. Please refer to codebook of original dataset for description of each variable
names of measurement variables:
- tBodyAcc.mean...Z                
- tGravityAcc.mean...X             
- tGravityAcc.std...Y              
- tBodyAccJerk.mean...Z            
- tBodyGyro.mean...X               
- tBodyGyro.std...Y                
- tBodyGyroJerk.mean...Z           
- tBodyAccMag.mean..               
- tBodyAccJerkMag.mean..           
- tBodyGyroJerkMag.mean..          
- fBodyAcc.mean...Z                
- fBodyAcc.meanFreq...X            
- fBodyAccJerk.mean...Y            
- fBodyAccJerk.std...Z             
- fBodyGyro.mean...X               
- fBodyGyro.std...Y                
- fBodyGyro.meanFreq...Z           
- fBodyBodyAccJerkMag.mean..       
- fBodyBodyGyroMag.std..           
- fBodyBodyGyroJerkMag.meanFreq.. 
- tBodyAcc.std...X                 
- tGravityAcc.mean...Y             
- tGravityAcc.std...Z              
- tBodyAccJerk.std...X             
- tBodyGyro.mean...Y               
- tBodyGyro.std...Z                
- tBodyGyroJerk.std...X            
- tBodyAccMag.std..                
- tBodyAccJerkMag.std..            
- tBodyGyroJerkMag.std..           
- fBodyAcc.std...X                 
- fBodyAcc.meanFreq...Y            
- fBodyAccJerk.mean...Z            
- fBodyAccJerk.meanFreq...X        
- fBodyGyro.mean...Y               
- fBodyGyro.std...Z                
- fBodyAccMag.mean..               
- fBodyBodyAccJerkMag.std..        
- fBodyBodyGyroMag.meanFreq..      
- tBodyAcc.std...Y                      
- tGravityAcc.mean...Z                  
- tBodyAccJerk.mean...X                 
- tBodyAccJerk.std...Y                  
- tBodyGyro.mean...Z                    
- tBodyGyroJerk.mean...X                
- tBodyGyroJerk.std...Y                 
- tGravityAccMag.mean..                 
- tBodyGyroMag.mean..                   
- fBodyAcc.mean...X                     
- fBodyAcc.std...Y                      
- fBodyAcc.meanFreq...Z                 
- fBodyAccJerk.std...X                  
- fBodyAccJerk.meanFreq...Y             
- fBodyGyro.mean...Z                    
- fBodyGyro.meanFreq...X                
- fBodyAccMag.std..                     
- fBodyBodyAccJerkMag.meanFreq..        
- fBodyBodyGyroJerkMag.mean..           
- tBodyAcc.std...Z           
- tGravityAcc.std...X        
- tBodyAccJerk.mean...Y      
- tBodyAccJerk.std...Z       
- tBodyGyro.std...X          
- tBodyGyroJerk.mean...Y     
- tBodyGyroJerk.std...Z      
- tGravityAccMag.std..       
- tBodyGyroMag.std..         
- fBodyAcc.mean...Y          
- fBodyAcc.std...Z           
- fBodyAccJerk.mean...X      
- fBodyAccJerk.std...Y       
- fBodyAccJerk.meanFreq...Z  
- fBodyGyro.std...X          
- fBodyGyro.meanFreq...Y     
- fBodyAccMag.meanFreq..     
- fBodyBodyGyroMag.mean..    
- fBodyBodyGyroJerkMag.std.. 
