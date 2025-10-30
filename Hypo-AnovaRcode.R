##################################
# Hypothesis Testing and ANOVA
##################################

#---- Problem 1 ----#

# Load vitcap dataset
library(ISwR)
data("vitcap")

# View the first few rows
head(vitcap)

# Descriptive Statistics 
mean(vitcap$vital.capacity)
sd(vitcap$vital.capacity)
summary(vitcap$vital.capacity)

# Histogram
hist(vitcap$vital.capacity,
     main = "Histogram of Vital Capacity",
     xlab = "Vital Capacity (Liters)",
     col = "lightblue", border = "black")

# Check Normality
shapiro.test(vitcap$vital.capacity)

# One sample t - test 
t.test(vitcap$vital.capacity, mu = 4.7)

# Boxplot
boxplot(vital.capacity ~ group, data = vitcap,
        main = "Vital Capacity by Exposure Group",
        xlab = "Group (1 = >10 yrs exposed, 3 = Not exposed)",
        ylab = "Vital Capacity (liters)",
        col = "lightgreen")

# --- Interpretation  ---
# The average vital capacity (4.47 L) is not significantly different from 4.7 L.
# The workers’ lung capacity does not differ meaningfully from the expected 4.7 liters on average.



#---- Problem 2 ----#

# Load the marketing dataset
library(ggplot2)
library(readr)
marketing_performance <- read_csv("Downloads/marketing_performance.csv")

# Chnage the dataset name
marketing <- marketing_performance

# View first few rows 
head(marketing)

# Boxplot: SalesLift by Strategy, colored by Region
ggplot(marketing, aes(x=Strategy, y=SalesLift, fill=Region)) +
  geom_boxplot() +
  labs(title="Sales Lift by Strategy and Region")

# Two-way ANOVA
anova <- aov(SalesLift ~ Strategy * Region, data = marketing)
summary(anova)

# Check ANOVA assumptions
# 1. Normality of residuals
shapiro.test(residuals(anova))

# 2. Equal variances
bartlett.test(SalesLift ~ interaction(Strategy, Region), data = marketing)

# --- Interpretation  ---
# Both marketing strategy and region have a strong effect on sales lift, and the interaction term is significant.
# This means the best marketing strategy depends on the region — for example, one strategy 
# (like Influencer marketing) may perform much better in Urban areas than in Rural areas.
# Because assumptions are satisfied, these results are reliable.



#---- Problem 3 ----#

# Load dataset iris
data(iris)

# View the first few rows
head(iris)

# Mean Sepal.Length for virginica
mean(iris$Sepal.Length[iris$Species == "virginica"])

# The average sepal length for the species virginica 6.588 cm, which is the largest among the three species.
# This shows that virginica generally has longer sepals compared to setosa and versicolor.

#---- Problem 4 ----#
# Means for all 4 numeric variables
apply(iris[, 1:4], 2, mean)

# The results show the average measurements for all flower parts across all iris samples.
# On average, petals are shorter and narrower than sepals. 
