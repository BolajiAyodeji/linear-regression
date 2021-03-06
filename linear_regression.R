# Linear Regression predicts linear relationship between two variables

# Set path to project directory
setwd("~/Tunnel/R Projects/Linear regression")

# Read csv data file in project directory
rawData=read.csv("linear.csv", header=T)

# Show first n entries of data.frame and notice NA values
head(rawData, 10)

linModel <- lm(y~x, data = rawData)

# Show attributes of linModel
attributes(linModel) 

# To show what happens with na.action, "omit" since data has NA
linModel$na.action

# Show coefficients of model
linModel$coefficients

# Predict New Value based on the model
predict(linModel, data.frame(x = 3))

plot(y ~ x, data = rawData,
     xlab = "This labels the x axis",
     ylab = "This labels the y axis",
     main = "Scatter Plot"
)

abline(linModel, col = "red", lwd = 3)
