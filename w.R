data <- read.csv(file="weight-weight.csv", header=TRUE, sep=",")

weight_data <- data[3]
weight_data_2 <- data[,3]

weight_mean <- mean(weight_data_2)
weight_median <- median(weight_data_2)
weight_sd <- sd(weight_data_2)
weight_iqr <- IQR(weight_data_2)
weight_mad <- mad(weight_data_2)

mu <- weight_mean
sigma <- weight_sd

message("Weight mean: ", weight_mean,
        "\nWeight median: ", weight_median,
        "\nWeight standart deviation: ", weight_sd,
        "\nWeight IQR: ", weight_iqr,
        "\nWeight MAD: ", weight_mad)

weight_summary <- summary(weight_data_2); weight_summary

plot(density(weight_data_2), lwd = 2, main = "Weight Distribution", xlab = "", 
     ylab = "Density", col = "lightblue", xlim = range(weight_data))
abline(v = c(mu - 3*sigma, mu, mu + 3*sigma), lwd = 2, col = c("black", "red", "black"))

plot(density(weight_data_2), lwd = 2, main = "Weight Distribution", xlab = "", 
     ylab = "Density", col = "lightblue", xlim = range(weight_data_2))
abline(v = fivenum(weight_data_2), col = c("black", "red", "red", "red", "black"))

hist(weight_data_2, main = "Weight Histogram", xlab="Normal Distribution", ylab="Frequency")
abline(v=weight_mean, lwd=2, lty=4, col="forestgreen")
abline(v=weight_median, lwd=2, lty= 3, col="darkred")
