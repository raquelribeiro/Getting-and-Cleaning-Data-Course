### Code Book
#### This is a Code Book for tidydata.txt file.

Raw data are obtained from UCI Machine Learning repository. In particular we used the Human Activity Recognition Using Smartphones Data Set [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip], that was used by the original collectors to conduct experiments exploiting Support Vector Machine (SVM).

The tidy data set was created merging and labeling the train and test files available at original.zip file. 

For more informations about the raw original data, acess 
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones]

#### Dimensions and Codes
This tidy dataset has 10299 rows and 68 columns, named as follows:

  1        timedomainbodyaccelerationmean.X                                     
  2        timedomainbodyaccelerationmean.Y                                     
  3        timedomainbodyaccelerationmean.Z                                     
  4        timedomainbodyaccelerationstandarddeviation.X                        
  5        timedomainbodyaccelerationstandarddeviation.Y                        
  6        timedomainbodyaccelerationstandarddeviation.Z                        
  7        timedomainGravityaccelerationmean.X                                  
  8        timedomainGravityaccelerationmean.Y                                  
  9        timedomainGravityaccelerationmean.Z                                  
 10        timedomainGravityaccelerationstandarddeviation.X                     
 11        timedomainGravityaccelerationstandarddeviation.Y                     
 12        timedomainGravityaccelerationstandarddeviation.Z                     
 13        timedomainbodyaccelerationJerkmean.X                                 
 14        timedomainbodyaccelerationJerkmean.Y                                 
 15        timedomainbodyaccelerationJerkmean.Z                                 
 16        timedomainbodyaccelerationJerkstandarddeviation.X                    
 17        timedomainbodyaccelerationJerkstandarddeviation.Y                    
 18        timedomainbodyaccelerationJerkstandarddeviation.Z                    
 19        timedomainbodyGyromean.X                                             
 20        timedomainbodyGyromean.Y                                             
 21        timedomainbodyGyromean.Z                                             
 22        timedomainbodyGyrostandarddeviation.X                                
 23        timedomainbodyGyrostandarddeviation.Y                                
 24        timedomainbodyGyrostandarddeviation.Z                                
 25        timedomainbodyGyroJerkmean.X                                         
 26        timedomainbodyGyroJerkmean.Y                                         
 27        timedomainbodyGyroJerkmean.Z                                         
 28        timedomainbodyGyroJerkstandarddeviation.X                            
 29        timedomainbodyGyroJerkstandarddeviation.Y                            
 30        timedomainbodyGyroJerkstandarddeviation.Z                            
 31        timedomainbodyaccelerationmagnitudemean                              
 32        timedomainbodyaccelerationmagnitudestandarddeviation                 
 33        timedomainGravityaccelerationmagnitudemean                           
 34        timedomainGravityaccelerationmagnitudestandarddeviation              
 35        timedomainbodyaccelerationJerkmagnitudemean                          
 36        timedomainbodyaccelerationJerkmagnitudestandarddeviation             
 37        timedomainbodyGyromagnitudemean                                      
 38        timedomainbodyGyromagnitudestandarddeviation                         
 39        timedomainbodyGyroJerkmagnitudemean                                  
 40        timedomainbodyGyroJerkmagnitudestandarddeviation                     
 41        frequencydomainbodyaccelerationmean.X                                
 42        frequencydomainbodyaccelerationmean.Y                                
 43        frequencydomainbodyaccelerationmean.Z                                
 44        frequencydomainbodyaccelerationstandarddeviation.X                   
 45        frequencydomainbodyaccelerationstandarddeviation.Y                   
 46        frequencydomainbodyaccelerationstandarddeviation.Z                   
 47        frequencydomainbodyaccelerationJerkmean.X                            
 48        frequencydomainbodyaccelerationJerkmean.Y                            
 49        frequencydomainbodyaccelerationJerkmean.Z                            
 50        frequencydomainbodyaccelerationJerkstandarddeviation.X               
 51        frequencydomainbodyaccelerationJerkstandarddeviation.Y               
 52        frequencydomainbodyaccelerationJerkstandarddeviation.Z               
 53        frequencydomainbodyGyromean.X                                        
 54        frequencydomainbodyGyromean.Y                                        
 55        frequencydomainbodyGyromean.Z                                        
 56        frequencydomainbodyGyrostandarddeviation.X                           
 57        frequencydomainbodyGyrostandarddeviation.Y                           
 58        frequencydomainbodyGyrostandarddeviation.Z                           
 59        frequencydomainbodyaccelerationmagnitudemean                         
 60        frequencydomainbodyaccelerationmagnitudestandarddeviation            
 61        frequencydomainbodybodyaccelerationJerkmagnitudemean                 
 62        frequencydomainbodybodyaccelerationJerkmagnitudestandarddeviation    
 63        frequencydomainbodybodyGyromagnitudemean                             
 64        frequencydomainbodybodyGyromagnitudestandarddeviation                
 65        frequencydomainbodybodyGyroJerkmagnitudemean                         
 66        frequencydomainbodybodyGyroJerkmagnitudestandarddeviation            
 67        activitylabel                                                        
 68        subject    

#### Atribute information

For each record in the dataset it is provided: 
- Means and standard deviations of Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Means and standard deviations of Triaxial Angular velocity from the gyroscope. 
- subject - Refers to the subjects that performed the activities. They are numbered from 1-30
- activitylabel - Refers to the activity performed by the subjects. They are coded as:  WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

For the original raw data details check the http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones website

#### References

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
