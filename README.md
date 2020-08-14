# Data-Science-Tasks

## Task # 2 - To Explore Supervised Machine Learning
In this regression task we will predict the percentage of marks that a student is expected to score based upon the number of hours they studied. This is a simple linear regression task as it involves just two variables.

Data can be found at http://bit.ly/w-data

### Predicting Score based on the number of hours studied :
To predict the score based on the number of hours studied, we implement Simple Linear Regression using the lm() function in R. After importing the dataset, we split it into training and test data. Then we fit the simple regression function to training set. In formula , we define the dependent variable and the independent variable and their correlation with each other. In our case, 'Hours' studied is the independent variable whereas 'Score' is the dependent variable. 
```
# Fitting Simple Linear Regression to the Training set
regressor = lm(formula = Scores ~ Hours,
               data = training_set)
```
This regressor is used to predict the percentage, after the user enters the hours studied.

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
![alt text](https://github.com/adiimated/Data-Science-Tasks/blob/master/Task%20%23%202%20-%20To%20Explore%20Supervised%20Machine%20Learning/SLR_Trainingplot.png)

![alt text](https://github.com/adiimated/Data-Science-Tasks/blob/master/Task%20%23%202%20-%20To%20Explore%20Supervised%20Machine%20Learning/SLR_Testingplot.png)


## Task # 3 - To Explore Unsupervised Machine Learning
Task : From the given ‘Iris’ dataset, predict the optimum number of clusters and represent it visually.

### Optimum Number of Clusters
To find the optimum number of clusters, we use the Elbow Method.The idea of the elbow method is to run k-means clustering on the dataset for a range of values of k and for each value of k calculate the sum of squared errors (SSE). Then, plot a line chart of the SSE for each value of k. If the line chart looks like an arm, then the "elbow" on the arm is the value of k that is the best.

![alt text](https://github.com/adiimated/Data-Science-Tasks/blob/master/Task%20%23%203%20-%20To%20Explore%20Unsupervised%20Machine%20Learning/Elbow%20Method.png)

In this case, we can see the "elbow" of the graph is 3. So the optimum number of clusters is 3.
### Analysis
### Visualizing the Clusters
