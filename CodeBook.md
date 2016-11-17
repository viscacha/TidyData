Code Book
A code book describes the variables, the data, and any transformations or work performed to clean up the data.

Collecting raw data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Cleaning Raw Data
1. The training and the test sets were merged to create one data set.  The data is merged on subject ID and activity ID to get a single data set. 
2. Extracts only the measurements on the mean and standard deviation for each measurement. Only keep values of the mean and standard devistaion.
3. Uses descriptive activity names to name the activities in the data set. Added new column with activity description. 
4. Appropriately labels the data set with descriptive variable names. Change of labels to make them more comprehensible.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. Final data set with clean data averaged for each activity or subject. 

Final TidyData set includes the following
1. A subject identifier ranged from 1 to 30.
2. An activity label: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
3. Mean values of the values collected during the experiment.
