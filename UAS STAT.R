rm(list = ls())

# Data
library(readxl)
mydata <- read_excel("Dataset Bahasa Pmerograman dan peminatnya.xlsx", col_types = c("text", "numeric", "numeric"))


# inisialisasi
y = mydata$Bahasa_Pemrograman
x2 = (mydata$Jumlah_Peminat)
x1 = (mydata$Popularitas)


# Membentuk model regresi
library("lmtest")
mod1 = lm(x1~x2, mydata)
summary(mod1)

#cross-validation
library("caret")
# Mengatur parameter k-fold cross-validation dengan 5 fold
train_control <- trainControl(method = "cv", number = 5)  # 5-fold cross-validation

# Melakukan k-fold cross-validation
cv_model <- train(Popularitas ~ Jumlah_Peminat, data = mydata, method = "lm", trControl = train_control)

# Menampilkan hasil cross-validation
print(cv_model)

# Uji asumsi
error = mod1$residuals

# uji kenormalan Kolmogorov-Smirnov
library(nortest)
lillie.test(error)
#eror dari data berdistribusi normal krn p-value > 0.05
#asumsi kenormalan terpenuhi

# uji non autokorelasi
library(car)
durbinWatsonTest(mod1)
#krn p-value > 0.05 dan nilai D-W mendekati 1 bukan 2 maka kita dapat menolak hipotesis 0 berarti asumsi non autokorelasi terpenuhi dan tidak ada pola residuals.

# uji homogen / identik 
abs_erro = abs(error)
uji_identik = lm(abs_erro~x1)
summary(uji_identik)
#Uji asumsi identik terpenuhi karena Variabel x1 memang memiliki pengaruh yang signifikan terhadap var abs_erro

# Visualisasikan
# Scatter plot dengan regresi
plot(mydata$Jumlah_Peminat, mydata$Popularitas,
     main = "Hubungan Jumlah Peminat dan Popularitas",
     xlab = "Jumlah Peminat",
     ylab = "Popularitas",
     pch = 16, col = "blue")
abline(mod1, col = "red", lwd = 2)

# Histogram Residuals
hist(error, main = "Distribusi Residuals",
     xlab = "Residuals",
     col = "skyblue", border = "white")

# Q-Q Plot untuk Residuals
qqnorm(error, main = "Q-Q Plot Residuals")
qqline(error, col = "red")

# Residuals vs Fitted Plot
plot(mod1$fitted.values, error,
     main = "Residuals vs Fitted Values",
     xlab = "Fitted Values",
     ylab = "Residuals",
     pch = 16, col = "blue")
abline(h = 0, col = "red", lwd = 2)


