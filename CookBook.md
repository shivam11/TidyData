CookBook
========================================================

###Original Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

##Feature Selection

Only the features having **mean** or **std** in the original data were selected. Only 74 out of the original 549 features were selected. The selected data are from the time and fft domains. Caluculated features from the angle were also added.
The names of the features are given below:
time.bodyacceleration.mean.x
time.bodyacceleration.mean.y
time.bodyacceleration.mean.z
time.bodyacceleration.std.x
time.bodyacceleration.std.y
time.bodyacceleration.std.z
time.gravityacceleration.mean.x
time.gravityacceleration.mean.y
time.gravityacceleration.mean.z
time.gravityacceleration.std.x
time.gravityacceleration.std.y
time.gravityacceleration.std.x
time.bodyaccelerationjerk.mean.x
time.bodyaccelerationjerk.mean.y
time.bodyaccelerationjerk.mean.z
time.bodyaccelerationjerk.std.x
time.bodyaccelerationjerk.std.y
time.bodyaccelerationjerk.std.z
time.bodygyro.mean.x
time.bodygyro.mean.y
time.bodygyro.mean.z
time.bodygyro.std.x
time.bodygyro.std.y
time.bodygyro.std.z
time.bodygyrojerk.mean.x
time.bodygyrojerk.mean.y
time.bodygyrojerk.mean.z
time.bodygyrojerk.std.x
time.bodygyrojerk.std.y
time.bodygyrojerk.std.z
time.bodyaccelerationmagnitude.mean
time.bodyaccelerationmagnitude.std
time.gravityaccelerationmagmitude.mean
time.gravityaccelerationmagmitude.std
time.bodyAccelerationjerkmagnitude.mean
time.bodyAccelerationjerkmagnitude.std
time.bodygyromagnitude.mean
time.bodygyromagnitude.std
time.bodygyrojerkmagnitude.mean
time.bodygyrojerkmagnitude.std
fft.bodyacceleration.mean.x
fft.bodyacceleration.mean.y
fft.bodyacceleration.mean.z
fft.bodyacceleration.std.x
fft.bodyacceleration.std.y
fft.bodyacceleration.std.z
fft.bodyaccelerationjerk.mean.x
fft.bodyaccelerationjerk.mean.y
fft.bodyaccelerationjerk.mean.z
fft.bodyaccelerationjerk.std.x
fft.bodyaccelerationjerk.std.y
fft.bodyaccelerationjerk.std.z
fft.bodygyro.mean.x
fft.bodygyro.mean.y
fft.bodygyro.mean.z
fft.bodygyro.std.x
fft.bodygyro.std.y
fft.bodygyro.std.z
fft.bodyaccelerationmagnitude.mean
fft.bodyaccelerationmagnitude.std
fft.bodyaccelerationjerkmagnitude.mean
fft.bodyaccelerationjerkmagnitude.std
fft.bodygyromagnitude.mean
fft.bodygyromagnitude.std
fft.bodygyrojerkmagnitude.mean
fft.bodygyrojerkmagnitude.std
angle.bodyacceleration.mean
angle.bodyaccjerk.mean
angle.bodygyro.mean
angle.bodygyrojerk.mean
angle.gravity.mean.x
angle.gravity.mean.y

