# Exploring Supervised Machine Learning

# Importing the dataset
dataset = read.csv('hours.csv')

# Splitting the dataset into training data and test data
#install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Scores, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Fitting Simple Linear Regression to the Training set
regressor = lm(formula = Scores ~ Hours,
               data = training_set)

# Predicting Scores based on Number of hours studied 
readinteger <- function()
{ 
  n <- readline(prompt="Enter Number of Hours Studied : ")
  no <- (as.integer(n))
  predicted_score<-data.frame(Hours=c(no))
  pred<-predict(regressor,predicted_score)
  pred
}

print(readinteger())

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)
y_pred

# Visualising the Training set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = training_set$Hours, y = training_set$Scores),
             colour = 'red') +
  geom_line(aes(x = training_set$Hours, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('Scores vs Hours (Training set)') +
  xlab('Hours') +
  ylab('Scores')

# Visualising the Test set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = test_set$Hours, y = test_set$Scores),
             colour = 'red') +
  geom_line(aes(x = training_set$Hours, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('Scores vs Hours (Test set)') +
  xlab('Hours') +
  ylab('Scores')


