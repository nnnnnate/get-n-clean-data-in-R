In this repo:

`bySubAct_mean.txt` is the clean data. It contains 81 varaibles, each of which will be explained in the following section, and 180 observations.

`README.md` shows what the R script will do, and how the original dataset is cleaned.

---

## Identifiers

* Suject:
1-30, indicating the 30 volunteers involved in this experiment.


* Activity:
including  WALKING,  WALKING_UPSTAIRS,  WALKING_DOWNSTAIRS,  SITTING,  STANDING and  LAYING, all 6 activities
WALKING: the subject is walking
WALKING_UPSATIRS: the subject is walking upstairs
WALKING_DOWNSTAIRS: the subject is walking downstairs
SITTING: the subject is sitting
STANDING: the subject is standing
LAYING: the subject is in a laying position

## Mean value of 81 feature measurements

Includes time-domain and frequency-domain information

Data come from the accelerometer and gyroscope 3-axial raw signals. "XYZ" stands for 3 different dimensions
These time domain signals (starts with timeDomain) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals  using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

* Time-domain info:

[3] "timeDomainBodyAccelerometer-Mean-X"                                 
[4] "timeDomainBodyAccelerometer-Mean-Y"                                 
[5] "timeDomainBodyAccelerometer-Mean-Z"                                 
[6] "timeDomainBodyAccelerometer-StandardDeviation-X"                    
[7] "timeDomainBodyAccelerometer-StandardDeviation-Y"                    
[8] "timeDomainBodyAccelerometer-StandardDeviation-Z"                    
[9] "timeDomainGravityAccelerometer-Mean-X"                              
[10] "timeDomainGravityAccelerometer-Mean-Y"                              
[11] "timeDomainGravityAccelerometer-Mean-Z"                              
[12] "timeDomainGravityAccelerometer-StandardDeviation-X"                 
[13] "timeDomainGravityAccelerometer-StandardDeviation-Y"                 
[14] "timeDomainGravityAccelerometer-StandardDeviation-Z"                 
[15] "timeDomainBodyAccelerometerJerk-Mean-X"                             
[16] "timeDomainBodyAccelerometerJerk-Mean-Y"                             
[17] "timeDomainBodyAccelerometerJerk-Mean-Z"                             
[18] "timeDomainBodyAccelerometerJerk-StandardDeviation-X"                
[19] "timeDomainBodyAccelerometerJerk-StandardDeviation-Y"                
[20] "timeDomainBodyAccelerometerJerk-StandardDeviation-Z"                
[21] "timeDomainBodyGyroscope-Mean-X"                                     
[22] "timeDomainBodyGyroscope-Mean-Y"                                     
[23] "timeDomainBodyGyroscope-Mean-Z"                                     
[24] "timeDomainBodyGyroscope-StandardDeviation-X"                        
[25] "timeDomainBodyGyroscope-StandardDeviation-Y"                        
[26] "timeDomainBodyGyroscope-StandardDeviation-Z"                        
[27] "timeDomainBodyGyroscopeJerk-Mean-X"                                 
[28] "timeDomainBodyGyroscopeJerk-Mean-Y"                                 
[29] "timeDomainBodyGyroscopeJerk-Mean-Z"                                 
[30] "timeDomainBodyGyroscopeJerk-StandardDeviation-X"                    
[31] "timeDomainBodyGyroscopeJerk-StandardDeviation-Y"                    
[32] "timeDomainBodyGyroscopeJerk-StandardDeviation-Z"                    
[33] "timeDomainBodyAccelerometerMagnitude-Mean"                          
[34] "timeDomainBodyAccelerometerMagnitude-StandardDeviation"             
[35] "timeDomainGravityAccelerometerMagnitude-Mean"                       
[36] "timeDomainGravityAccelerometerMagnitude-StandardDeviation"          
[37] "timeDomainBodyAccelerometerJerkMagnitude-Mean"                      
[38] "timeDomainBodyAccelerometerJerkMagnitude-StandardDeviation"         
[39] "timeDomainBodyGyroscopeMagnitude-Mean"                              
[40] "timeDomainBodyGyroscopeMagnitude-StandardDeviation"                 
[41] "timeDomainBodyGyroscopeJerkMagnitude-Mean"                          
[42] "timeDomainBodyGyroscopeJerkMagnitude-StandardDeviation" 

* Frequency-domain info

a Fast Fourier Transform (FFT) was applied to the timeDomain data to produce the frequencyDomain data

[43] "frequencyDomainBodyAccelerometer-Mean-X"                            
[44] "frequencyDomainBodyAccelerometer-Mean-Y"                            
[45] "frequencyDomainBodyAccelerometer-Mean-Z"                            
[46] "frequencyDomainBodyAccelerometer-StandardDeviation-X"               
[47] "frequencyDomainBodyAccelerometer-StandardDeviation-Y"               
[48] "frequencyDomainBodyAccelerometer-StandardDeviation-Z"               
[49] "frequencyDomainBodyAccelerometer-MeanFrequency-X"                   
[50] "frequencyDomainBodyAccelerometer-MeanFrequency-Y"                   
[51] "frequencyDomainBodyAccelerometer-MeanFrequency-Z"                   
[52] "frequencyDomainBodyAccelerometerJerk-Mean-X"                        
[53] "frequencyDomainBodyAccelerometerJerk-Mean-Y"                        
[54] "frequencyDomainBodyAccelerometerJerk-Mean-Z"                        
[55] "frequencyDomainBodyAccelerometerJerk-StandardDeviation-X"           
[56] "frequencyDomainBodyAccelerometerJerk-StandardDeviation-Y"           
[57] "frequencyDomainBodyAccelerometerJerk-StandardDeviation-Z"           
[58] "frequencyDomainBodyAccelerometerJerk-MeanFrequency-X"               
[59] "frequencyDomainBodyAccelerometerJerk-MeanFrequency-Y"               
[60] "frequencyDomainBodyAccelerometerJerk-MeanFrequency-Z"               
[61] "frequencyDomainBodyGyroscope-Mean-X"                                
[62] "frequencyDomainBodyGyroscope-Mean-Y"                                
[63] "frequencyDomainBodyGyroscope-Mean-Z"                                
[64] "frequencyDomainBodyGyroscope-StandardDeviation-X"                   
[65] "frequencyDomainBodyGyroscope-StandardDeviation-Y"                   
[66] "frequencyDomainBodyGyroscope-StandardDeviation-Z"                   
[67] "frequencyDomainBodyGyroscope-MeanFrequency-X"                       
[68] "frequencyDomainBodyGyroscope-MeanFrequency-Y"                       
[69] "frequencyDomainBodyGyroscope-MeanFrequency-Z"                       
[70] "frequencyDomainBodyAccelerometerMagnitude-Mean"                     
[71] "frequencyDomainBodyAccelerometerMagnitude-StandardDeviation"        
[72] "frequencyDomainBodyAccelerometerMagnitude-MeanFrequency"            
[73] "frequencyDomainBodyBodyAccelerometerJerkMagnitude-Mean"             
[74] "frequencyDomainBodyBodyAccelerometerJerkMagnitude-StandardDeviation"
[75] "frequencyDomainBodyBodyAccelerometerJerkMagnitude-MeanFrequency"    
[76] "frequencyDomainBodyBodyGyroscopeMagnitude-Mean"                     
[77] "frequencyDomainBodyBodyGyroscopeMagnitude-StandardDeviation"        
[78] "frequencyDomainBodyBodyGyroscopeMagnitude-MeanFrequency"            
[79] "frequencyDomainBodyBodyGyroscopeJerkMagnitude-Mean"                 
[80] "frequencyDomainBodyBodyGyroscopeJerkMagnitude-StandardDeviation"    
[81] "frequencyDomainBodyBodyGyroscopeJerkMagnitude-MeanFrequency" 
