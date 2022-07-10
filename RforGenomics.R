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
+
surveys2 <- filter(surveys, weight < 5)
surveys_sml <- select(surveys2, species_id, sex, weight)
surveys %>%
filter(year<1995) %>%
select(year, sex, weight)
surveys_hindfoot_cm <- surveys$hindfoot_length*10
surveys$surveys_hindfoot_cm=surveys_hindfoot_cm
select(surveys, sex)
surveys %>%
  group_by(sex) %>%
  summarize(mean_weight = mean(weight, na.rm = TRUE))
surveys %>%
  group_by(sex, species_id) %>%
  summarize(mean_weight = mean(weight, na.rm = TRUE)) %>%
  tail()
surveys %>%
  filter(!is.na(weight)) %>%
  group_by(sex, species_id) %>%
  summarize(mean_weight = mean(weight))
surveys %>%
  count(plot_type, sort = TRUE)

ggplot(data = surveys, aes(x = weight, y = hindfoot_length)) +
  geom_point()


# Assign plot to a variable
surveys_plot <- ggplot(data = surveys,
                       mapping = aes(x = weight, y = hindfoot_length))

  surveys_plot <- ggplot(data = surveys,
                         mapping = aes(x = weight, y = hindfoot_length))

# Draw the plot
surveys_plot +
  geom_point(alpha=0.1, color = "blue")

ggplot(data = surveys, mapping = aes(x = weight, y = hindfoot_length)) +
  geom_point(alpha = 0.1, aes(color = species_id))
ggplot(data = surveys, mapping = aes(x = species_id, y = weight)) +
  geom_boxplot(alpha = 0) +
  geom_jitter(alpha = 0.3, color = "tomato")
yearly_counts <- surveys %>%
  count(year, genus)
print(yearly_counts)
ggplot(data = yearly_counts, aes(x = year, y = n)) +
  geom_line()
ggplot(data = yearly_counts, aes(x = year, y = n, color = genus)) +
  geom_line()
#facet ting
ggplot(data = yearly_counts, aes(x = year, y = n)) +
  geom_line() +
  facet_wrap(facets = vars(genus))
ggplot(data=surveys, aes(x=species_id, y=weight))+
  geom_boxplot()
#patchwork
plot_weight <- ggplot(data = surveys, aes(x = species_id, y = weight)) +
  geom_boxplot() +
  labs(x = "Species", y = expression(log[10](Weight))) +
  scale_y_log10()

plot_count <- ggplot(data = yearly_counts, aes(x = year, y = n, color = genus)) +
  geom_line() +
  labs(x = "Year", y = "Abundance")

plot_weight / plot_count + plot_layout(heights = c(3, 2))
