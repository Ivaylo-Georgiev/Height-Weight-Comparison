data <- read.csv(file="weight-height.csv", header=TRUE, sep=",")

gender_data <- data[1]
height_data <- data[2]
weight_data <- data[3]

gender_data_2 <- data[,1]
height_data_2 <- data[,2]
weight_data_2 <- data[,3]

boxplot(weight_data_2 ~ gender_data_2, main="Weight-Gender", 
        xlab="Gender (0 - Male, 1 - Female)", ylab="Weight (in pounds)", col=(c("lightblue","pink")))

plot(height_data_2, weight_data_2, main="Height-Weight", 
     xlab="Height (in inches)", ylab="Weight (in pounds)")

cor_pearson <- cor(height_data_2, weight_data_2, method = "pearson"); cor_pearson
cor_spearman <- cor(height_data_2, weight_data_2, method = "spearman"); cor_spearman
