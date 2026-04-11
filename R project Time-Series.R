xf <- read.table("C:/Users/User/Downloads/slavery.txt", header = TRUE)
year = xf$year
slaves = xf$num
plot(year, 
     slaves,
     main = "Altantic Slave Trade Recordings",
     xlab = "Year",
     ylab = "Recorded Slaves",
     col = "darkblue",
     pch = 20
)
grid()

trends <- lm(slaves~year)
Y <- residuals(trends)

plot(xf$year, Y, 
     main = "Detrended Records (Residuals)", 
     xlab = "Year", 
     ylab = "Deviation from Trend (Y)", 
     pch = 16, 
     col = "darkred")

# Add a reference line at zero
abline(h = 0, lty = 2)
