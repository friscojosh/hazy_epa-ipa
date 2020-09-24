# Temperature and fermentation curves for Hazy EPA IPA

library(tidyverse)

ferment_data <- read_csv("data/data.csv")

ferment_data %>%
  ggplot(aes(x = Timepoint, y = SG)) +
  geom_point(size = 1.5, alpha = .6) +
  geom_smooth(method = "loess", color = "green") +
  theme_minimal() +
  labs(x = "Timepoint", y = "Specific Gravity", title = "Hazy EPA IPA Fermentation Curve", caption = "September 20-24")
