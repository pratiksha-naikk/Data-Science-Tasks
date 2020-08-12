# Data-Science-Tasks

## Task # 2 - To Explore Supervised Machine Learning
In this regression task we will predict the percentage of marks that a student is expected to score based upon the number of hours they studied. This is a simple linear regression task as it involves just two variables.

Data can be found at http://bit.ly/w-data

### Predicting Score based on the number of hours studied :
To predict the score based on the number of hours studied, we implement Simple Linear Regression using the lm() function in R. After importing the dataset, we split it into training and test data. Then we fit the simple regression function to training set. In formula , we define the dependent variable and the independent variable and their correlation with each other. In our case, Hours Studied is the independent variable whereas Score is the dependent variable. 
```
# Fitting Simple Linear Regression to the Training set
regressor = lm(formula = Scores ~ Hours,
               data = training_set)
```


### Predicting Test Data :
| Number | Hours | Actual Scores | Predicted Scores |
| ------------- | ------------- | ------------- | ------------- |
|  5 | 3.5 | 30  | 36.85324 |
| 11 | 7.7 | 85 | 76.02682 |
| 16 | 8.9 | 95 | 87.21927 |
| 20 | 7.4 | 69 | 73.22871 |
| 24 | 6.9 | 76 | 68.56519 |

### Vizualized Training and Test Data :
To visualize the above data , we use ggplot2 package.
<html>
<a href="url"><img src="https://github.com/adiimated/Data-Science-Tasks/blob/master/Task%20%23%202%20-%20To%20Explore%20Supervised%20Machine%20Learning/SLR_Trainingplot.png" align="left"  width="650" ></a>


<a href="url"><img src="https://github.com/adiimated/Data-Science-Tasks/blob/master/Task%20%23%202%20-%20To%20Explore%20Supervised%20Machine%20Learning/SLR_Testingplot.png" align="left"  width="650" ></a>
</html>
