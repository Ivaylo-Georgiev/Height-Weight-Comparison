data <- read.csv(file="weight-height.csv", header=TRUE, sep=",")

height_data <- data[2]
height_data_2 <- data[,2]

height_mean <- mean(height_data_2)
height_median <- median(height_data_2)
height_sd <- sd(height_data_2)
height_iqr <- IQR(height_data_2)
height_mad <- mad(height_data_2)

mu <- height_mean
sigma <- height_sd

message("Height mean: ", height_mean,
        "\nHeight standart deviation: ", height_sd,
        "\nHeight IQR: ", height_iqr,
        "\nHeight MAD: ", height_mad)

height_summary <- summary(height_data_2); height_summary

plot(density(height_data_2), lwd = 2, main = "Height Distribution", xlab = "", 
     ylab = "Density", col = "lightblue", xlim = range(height_data))
abline(v = c(mu - 3*sigma, mu, mu + 3*sigma), lwd = 2, col = c("black", "red", "black"))

plot(density(height_data_2), lwd = 2, main = "Height Distribution", xlab = "", 
     ylab = "Density", col = "lightblue", xlim = range(height_data_2))
abline(v = fivenum(height_data_2), col = c("black", "red", "red", "red", "black"))

hist(height_data_2, main = "Height Histogram", xlab="Normal Distribution", ylab="Frequency")
abline(v=height_mean, lwd=2, lty=4, col="forestgreen")
abline(v=height_median, lwd=2, lty= 3, col="darkred")
