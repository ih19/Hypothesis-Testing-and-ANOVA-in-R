# Statistical Analysis in R: Hypothesis Testing, ANOVA, and Descriptive Statistics

## Problem 1: Vital Capacity Analysis
**Dataset:** `vitcap` from the `ISwR` package  
The `vitcap` dataset has 24 rows and 3 columns. It contains data on vital capacity for workers in the cadmium industry.

**Variables:**  
- `group`: numeric; 1 = exposed > 10 years, 3 = not exposed  
- `age`: numeric; age in years  
- `vital.capacity`: numeric; lung volume in liters  

**Analysis Steps:**  
a) Calculated descriptive statistics (mean = 4.47 L, standard deviation = 1.01 L) and created a histogram.  
b) Checked normality using Shapiro-Wilk test (p = 0.098), indicating the data is approximately normal.  
c) Conducted a one-sample t-test against 4.7 liters (p = 0.277), showing no significant difference.  
d) Created a boxplot of `vital.capacity` by `group` to visualize differences.  
e) **Conclusion:** Workers’ lung capacity is close to the expected 4.7 liters, and there is no significant difference between exposure groups. Exposure does not appear to have a clear effect on vital capacity.

---

## Problem 2: Marketing Performance Analysis
**Dataset:** `marketing_performance.csv`  
The dataset contains data on digital marketing campaigns run by a consulting firm.  

**Variables:**  
- `SalesLift`: percent increase in sales after the campaign  
- `Strategy`: marketing strategy used (Email, SocialMedia, Influencer)  
- `Region`: campaign region (Urban, Rural)  

**Analysis Steps:**  
a) Loaded the dataset and displayed the first few rows.  
b) Created a boxplot of `SalesLift` by `Strategy`, colored by `Region`.  
c) Conducted a two-way ANOVA to test the effects of `Strategy`, `Region`, and their interaction. All terms were significant (interaction p = 0.021).  
d) Checked ANOVA assumptions: residuals normal (Shapiro-Wilk p = 0.32) and equal variances (Bartlett p = 0.754).  
e) **Conclusion:** Both strategy and region affect sales lift, and the best strategy depends on the region. Marketing campaigns should be tailored to the region to maximize effectiveness.

---

## Problem 3: Iris Sepal Length
**Dataset:** `iris` (built-in R dataset)  
- Calculated the mean of `Sepal.Length` for the species *virginica*: **6.588 cm**  
- *Virginica* flowers have the longest sepals among the three species, showing clear morphological differences.

---

## Problem 4: Iris Overall Means
- Used the `apply` function to calculate mean values for `Sepal.Length`, `Sepal.Width`, `Petal.Length`, and `Petal.Width` across all species:  
  - Sepal.Length: 5.84 cm  
  - Sepal.Width: 3.06 cm  
  - Petal.Length: 3.76 cm  
  - Petal.Width: 1.20 cm  
- Sepals are generally longer and wider than petals, providing an overview of typical iris measurements.

---

## How to Run
1. Install and load required packages:

```r
install.packages(c("ISwR", "ggplot2", "readr"))
library(ISwR)
library(ggplot2)
library(readr)
