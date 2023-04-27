mydata<-data.frame(iris)
attach(mydata)

library(tree)
model1<-tree(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,data=mydata,method="class",split="gini")
plot(model1)
text(model1,all=TRUE,cex=0.6)
