Book=read.csv(file.choose())
library(recommenderlab)
library(caTools)
View(Book)
book=Book[,-1]
View(book)
book_DF=as(book,"realRatingMatrix")
book_DF
book_popularity=Recommender(book_DF,method="POPULAR")
bookpopularity1=predict(book_popularity,book_DF,n=1)
list=as(bookpopularity1,"list")
list
getmode <- function(l) {
  uniqv <- unique(l)
  uniqv[which.max(tabulate(match(l, uniqv)))]
}
getmode(list)
#The recommended book based on popularity is "In the Beauty of the Lilies"
