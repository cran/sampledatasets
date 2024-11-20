## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(sampledatasets)

library(ggplot2)

library(dplyr)


## ----ggplot2------------------------------------------------------------------

# Example: Scatter plot of miles per gallon vs weight
mtcars_df %>%
  ggplot(aes(x = wt, y = mpg, color = cyl)) +
  geom_point(alpha = 0.7) +
  labs(
    title = "Miles Per Gallon vs Weight",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon",
    color = "Cylinders"
  ) +
  theme_minimal()



## ----ggplot2_001--------------------------------------------------------------

# Example: Histogram of fertility rates
swiss_df %>%
  ggplot(aes(x = Fertility)) +
  geom_histogram(binwidth = 5, fill = "blue", color = "black", alpha = 0.7) +
  labs(
    title = "Distribution of Fertility Rates in Switzerland",
    x = "Fertility Rate",
    y = "Count"
  ) +
  theme_minimal()



