### Example of a Time Series Analysis Workflow

# Data import, 2 alternatives

myts <- scan()

# Conversion to a time series

mycounts <- ts(myts2$X2, start = 1, frequency = 12)


#Alternative with myts vector
my_counts_check <- ts(myts,start=1,frequency=12)

#check objects

print(identical(mycounts,my_counts_check))

#visualization
plot(mycounts, ylab= "Customer Counts", xlab="weeks")

#simple forecasting
library(forecast)
monthplot(mycounts, labels = 1:12, xlab = "Bidaily Units")
seasonplot(mycounts, season.labels = F, xlab = "")

# Model forecast
plot(forecast(auto.arima(mycounts)))
