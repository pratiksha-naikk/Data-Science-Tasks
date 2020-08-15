# Task 4 - To Explore Decision Tree Algorithm

# Decision Tree for Iris dataset
library(rpart)
library(rpart.plot)

v <- iris$Species

table(v)
set.seed(522)

# Tree Fitting
iris[, 'train'] <- ifelse(runif(nrow(iris)) < 0.75, 1, 0)

trainSet <- iris[iris$train == 1,]
testSet <- iris[iris$train == 0, ]

trainColNum <- grep('train', names(trainSet))

trainSet <- trainSet[, -trainColNum]
testSet <- testSet[, -trainColNum]

treeFit <- rpart(Species~.,data=trainSet,method = 'class')
print(treeFit)

# Print the confusion matrix to check the accuracy and other statistics
library(caret)
confusionMatrix(Prediction1,testSet$Species)

# Pruning the decision tree
printcp(treeFit)
opt  <-  which.min(treeFit$cptable[,'xerror'])
cp <-  treeFit$cptable[opt, 'CP']
pruned_model <-  prune(treeFit,cp)

# Visualizing Pruned Model
rpart.plot(pruned_model, box.col=c("lemonchiffon", "darkolivegreen1"))

# Predicting Species
readinteger <- function()
{ 
  n1 <- readline(prompt="Enter Sepal Length : ")
  n1 <- (as.integer(n1))
  n2 <- readline(prompt="Enter Sepal Width : ")
  n2 <- (as.integer(n2))
  n3 <- readline(prompt="Enter Petal Length : ")
  n3 <- (as.integer(n3))
  n4 <- readline(prompt="Enter Petal Width : ")
  n4 <- (as.integer(n4))
  
  # model fitting
  fitTree<-rpart(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,iris)
  
  #prediction-one row data
  newdata<-data.frame(Sepal.Length=n1,Sepal.Width=n2,Petal.Length=n3,Petal.Width=n4)
  newdata
  predict(fitTree, newdata,type="class")
  
}

print(readinteger())
