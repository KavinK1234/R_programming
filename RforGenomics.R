chr <- c("chr1", "chr1", "chr2", "chr2")
strand <- c("-","-","+","+")
start<- c(200,4000,100,400)
end<-c(250,410,200,450)
mydata <- data.frame(chr,start,end,strand)
#change column names
names(mydata) <- c("chr","start","end","strand")
mydata # OR this will work too

w <- list(name="Fred",
          mynumbers=c(1,2,3),
          mymatrix=matrix(1:4,ncol=2),
          age=5.3)
features=c("promoter","exon","intron")
f.feat=factor(features)
levels(f.feat)=c("e", "i", "p")
sqSum<-function(x,y){
  result=x^2+y^2
  return(result)
}

for(i in 1:10){ # number of repetitions
  cat("This is iteration") # the task to be repeated
  print(i)
}

mat=cbind(c(3,0,3,3),c(3,0,0,0),c(3,0,0,3),c(1,1,0,0),c(1,1,1,0),c(1,1,1,0))
result<-apply(mat,1,sum)
apply(mat, 2, sum)
result
input=c(1,2,3)
lapply(input,function(x) x^2)
vec[vec>6]
df=data.frame(col1=1:3,col2=c("a","b","c"),col3=3:1)
df

mylist= list(a=c(1,2,3),b=c("apple","orange"))
mylist
fa=factor(c("a","a","b"))
levels(fa)=c("0", "1")