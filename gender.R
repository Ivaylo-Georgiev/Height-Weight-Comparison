data <- read.csv(file="weight-height.csv", header=TRUE, sep=",")

gender_data <- data[1]; gender_data
gender_data_2 <- data[,1]

pie(table(gender_data_2), main = "Gender Distribution", labels=c("Male", "Female"),  col=c("lightblue", "pink"))
