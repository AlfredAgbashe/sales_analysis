library(tidyverse)
salesdata %>% summarize(total_sales = sum(Sales))
salesdata %>%
  group_by(Month = lubridate::month(Date, label = TRUE)) %>%
  summarize(monthly_sales = sum(Sales)) %>%
  ggplot(aes(x = Month, y = monthly_sales)) +
  geom_col(fill = "steelblue") +
  theme_minimal()

salesdata %>%
  group_by(Product) %>%
  summarize(total_sales = sum(Sales)) %>%
  arrange(desc(total_sales)) %>%
  head(5)
