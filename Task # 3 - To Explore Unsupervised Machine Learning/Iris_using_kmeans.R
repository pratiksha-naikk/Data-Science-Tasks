# Task # 3 - To Explore Unsupervised Machine Learning

# Loading the Libraries
library(ggplot2)
theme_set(theme_bw(base_size=12)) # set default ggplot2 theme
library(dplyr)

# Elbow Method To Determine Optimum Number of Clusters
set.seed(200)
k.max <- 10
wss<- sapply(1:k.max,function(k){kmeans(iris[,3:4],k,nstart = 20,iter.max = 20)$tot.withinss})
wss

plot(1:k.max,wss, type= "b", xlab = "Number of clusters(k)", ylab = "Within cluster sum of squares")


# Removing the unnecessary column and analysing the dataset
iris %>% select(-Species) %>% 
  kmeans(centers=3) ->      
  km                          

# Reviewing the results
km
km$centers

# Visualizing the clusters
iris %>% select(-Species) %>% kmeans(centers=3, nstart=10) -> km
iris_clustered <- data.frame(iris, cluster=factor(km$cluster))
ggplot(iris_clustered, aes(x=Petal.Width, y=Sepal.Width, color=cluster, shape=Species)) + geom_point()

