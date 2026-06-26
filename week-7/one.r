names = c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)
df = data.frame(names,gender,height,weight,age)
# View(df)

# Print stuff
print(df[1])
print(df[1,])
print(df[1:2])
print(df[1:2,])

print(df["gender"])
print(typeof(df["gender"]))
print(df$"gender")
print(typeof(df$"gender"))

print(df[1:2])
print(df[c(1,2)])

df[df$names=='Mike',]
df[df$age>35,]
df[df$height>170 & df$weight>80,]

df[df$gender=='Male',]
df[df$height>170 & df$age<40,]
newdf = rbind(df, data.frame(names = "Lina",
gender = "Female",
height = 156,
weight = 56,
age = 23 ))
#print("After Added rows:\n")
print(newdf)
# # View(newdf)

names =c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)

df =data.frame(names,gender,height,weight,age)
print("Before Adding:\n")
print(df)
newdf = rbind(df, data.frame(names = "Suuria",
gender = "Female",
height = 156,
weight = 56,
age = 23 ))
#print("After Added rows:\n")
print(newdf)


## Merge
gender = c("Female", "Male", "Male","Female","Male")
height = c(160, 175, 173,156,169)
weight = c(49, 89, 77,56,81)
age = c(35, 36, 41,23, 28)
names =c("Carrol","Mike","John","Suuria","Malik")

df1 = data.frame(names,gender,height,weight,age)
states = c("Selangor","Perak","Melaka")
names = c("Carrol","John","Malik")

df2 = data.frame(names, states)
dfMerge = merge(df1, df2, by = "names", all= TRUE)
# View(dfMerge)

# Remove Rows
newDf2 = dfMerge[-2,] 
# View(newDf2)

# Modify dataframe
newDf3 = dfMerge
print(newDf3)
newDf3[1, "age"] <- 30
print(newDf3)
152 -> newDf3[4, "height"]
print(newDf3)

# Filter (column, row)
print(newDf3[2:4, 1:2])

# CHAPTER 2 : IMPORT EXPORT
# Load from datasets
library(readr)
data_cov <- read.csv ('datasets/my_covid.csv')
head(data_cov,5)
summary(data_cov)

# Save to CSV
names =c("Carrol","Mike","John")
gender = c("Female", "Male", "Male")
height = c(160, 175, 173)
weight = c(49, 89, 77)
age = c(35, 36, 41)
savedf = data.frame(names,gender,height,weight,age)
write.csv (savedf, "datasets/savedf.csv")

# Handle missing data
#creating a vector of integers having NAs.
a<-c(1:5, rep(NA,3),6:10)
a
#performing sum on the vector
sum(a)
#selecting only integer values
b<-a[!is.na(a)]
b
#performing sum on the new vector
sum(b)

#creating a vector of integers having NAs.
a<-c(seq(1,10,3), rep(NA,4), seq(10,2,-2))
a
#assigning 0 to NAs
a[is.na(a)]<-0
a 

# NAExample
data_cov <- read.csv ('datasets/NAexample.csv')
is.na(data_cov) #whole dataframe
is.na(data_cov["VarA"]) #column

mean(df$VarA)
mean(na.omit(df$VarA))

df <- read.csv("datasets/NAexample.csv")
View(df)
df$VarA[is.na(df$VarA)]<-sd(na.omit(df$VarA))
df$VarB[is.na(df$VarB)]<-mean(df$VarB,na.rm=TRUE)
df$VarC[is.na(df$VarC)]<-median(df$VarC,na.rm=TRUE)
View(df)

label <- c("Student", "name", "Student ID program", "Coursework", "grade (50%)", "Final exam", "grade (50%)")