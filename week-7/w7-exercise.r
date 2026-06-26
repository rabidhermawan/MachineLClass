# Quesiton 1: Creating DataFrame ---------------------------------
# Create Vector
Name = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily")
Gender = c("Female", "Male", "Female", "Male", "Female")
Age = c(22, 23, 21, 24, 22)
Test_Score = c(85, 78, 92, 65, 88)
Attendance = c(90, 85, 95, 70, 88)

q1_df = data.frame(Name,Gender, Age, Test_Score, Attendance)
View(q1_df)

# Question 2 ---------------------------------
#Display the Test_Score column using both df['Test_Score'] and df$Test_score.
print(q1_df["Test_Score"])
print(q1_df$"Test_Score")

#Display the first 3 rows of the data frame
print(q1_df[1:3,])

#Display students who are older than 22
print(q1_df[q1_df$Age>22,])

#Display female students with Test_Score greater than 80
print(q1_df[q1_df$Gender=="Female" & q1_df$Test_Score>80,])

# Question 3: Add New Data ---------------------------------
q3_df = rbind(q1_df, data.frame(Name = "Lina",
Gender = "Male",
Age = 20,
Test_Score = 56,
Attendance = 92))
print(q3_df)

# Question 4: NA data ---------------------------------
students_na <- data.frame(
 Name = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily"),
 Gender = c("Female", "Male", "Female", "Male", "Female"),
 Age = c(22, NA, 21, 24, 22),
 Test_Score = c(85, 78, NA, 65, 88),
 Attendance = c(90, 85, 95, NA, 88)
)

#Check for missing values (NA) in the data frame
print(students_na)
print(is.na(students_na))

#Replace missing values in Age with the mean age
students_na$Age[is.na(students_na$Age)]<-mean(students_na$Age,na.rm=TRUE)
print(students_na)

#Replace missing values in Test_Score with the median test score
students_na$Test_Score[is.na(students_na$Test_Score)]<-median(students_na$Test_Score,na.rm=TRUE)
print(students_na)

#Replace missing values in Attendance with 0
students_na$Attendance[is.na(students_na$Attendance)]<-0
print(students_na)
