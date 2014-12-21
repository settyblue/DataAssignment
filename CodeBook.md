# CodeBook
#####Version : 1.0  
#####Date : 21-12-2014
#####Author : Rakshith Kunchum  
#####Contact : [settyblue].[at].[gmail].[com]
This file will helping in understanidng the dataset attached in this project.
The dimension of the dataset is **180 X 68**. The dataset file contains the column headers (column names) - While extracting the dataset, make a note of it.The row names are not present.

> Basically there are 30 subjects and for each subject we have, 6 Activities , so in total 30X6 =  180 rows.

The column labels and thier legend are mentioned below. For help regarding the naming of the column labels please scroll down to bottom of the page.

(Columns 3 to 68 are the observations)

1. Subject   (IDs from 1:30)
2. Activity   (Factors) 
    - WALKING
    - WALKING_UPSTAIRS
    - WALKING_DOWNSTAIRS
    - SITTINGSTANDING
    - LAYING
3. tBodyAcc_mean_X
4. tBodyAcc_mean_Y
5. tBodyAcc_mean_Z
6. tBodyAcc_std_X
7. tBodyAcc_std_Y
8. tBodyAcc_std_Z
9. tGravityAcc_mean_X
10. tGravityAcc_mean_Y
11. tGravityAcc_mean_Z
12. tGravityAcc_std_X
13. tGravityAcc_std_Y
14. tGravityAcc_std_Z
15. tBodyAccJerk_mean_X
16. tBodyAccJerk_mean_Y
17. tBodyAccJerk_mean_Z
18. tBodyAccJerk_std_X
19. tBodyAccJerk_std_Y
20. tBodyAccJerk_std_Z
21. tBodyGyro_mean_X
22. tBodyGyro_mean_Y
23. tBodyGyro_mean_Z
24. tBodyGyro_std_X
25. tBodyGyro_std_Y
26. tBodyGyro_std_Z
27. tBodyGyroJerk_mean_X
28. tBodyGyroJerk_mean_Y
29. tBodyGyroJerk_mean_Z
30. tBodyGyroJerk_std_X
31. tBodyGyroJerk_std_Y
32. tBodyGyroJerk_std_Z
33. tBodyAccMag_mean
34. tBodyAccMag_std
35. tGravityAccMag_mean
36. tGravityAccMag_std
37. tBodyAccJerkMag_mean
38. tBodyAccJerkMag_std
39. tBodyGyroMag_mean
40. tBodyGyroMag_std
41. tBodyGyroJerkMag_mean
42. tBodyGyroJerkMag_std
43. fBodyAcc_mean_X
44. fBodyAcc_mean_Y
45. fBodyAcc_mean_Z
46. fBodyAcc_std_X
47. fBodyAcc_std_Y
48. fBodyAcc_std_Z
49. fBodyAccJerk_mean_X
50. fBodyAccJerk_mean_Y
51. fBodyAccJerk_mean_Z
52. fBodyAccJerk_std_X
53. fBodyAccJerk_std_Y
54. fBodyAccJerk_std_Z
55. fBodyGyro_mean_X
56. fBodyGyro_mean_Y
57. fBodyGyro_mean_Z
58. fBodyGyro_std_X
59. fBodyGyro_std_Y
60. fBodyGyro_std_Z
61. fBodyAccMag_mean
62. fBodyAccMag_std
63. fBodyBodyAccJerkMag_mean
64. fBodyBodyAccJerkMag_std
65. fBodyBodyGyroMag_mean
66. fBodyBodyGyroMag_std
67. fBodyBodyGyroJerkMag_mean
68. fBodyBodyGyroJerkMag_std

###Column Labels
The observation variables are labelled in a structured fashion. Please read the points given below to easily comprehend the meaning of these column labels.
- Different parts of the label are separated by an '_'  
- The first part gives the actual name of the measured feature. The first letter of the name tells us whether it is time-attribute(t) or a frequency(f) attribute.
- The second part says whether the measurement is a mean or a standard-deviation(std)
- The third part if present will specify the spacial direction(say X, Y or Z) along which it was measured.

Example :

fBodyGyro_mean_X

It is a frequency attribute by name 'BodyGyro'. The mean of the attribute along the X-axis is recorded here.

###Note
For more information regarding the features, please read features_info.txt file present in the problem-statement.
