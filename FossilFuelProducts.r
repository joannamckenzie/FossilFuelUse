#import tidyverse::
library(tidyverse)

oilProducts<- read.csv("ProcessedData/Products_by_year.csv")

oilProducts$variable = as.factor(oilProducts$variable)

# The variable "Oil and petroleum products (excluding biofuel portion)" is a total figure (I checked this in the spreadsheet)


a <- oilProducts %>% 
  filter(variable != "Oil and petroleum products (excluding biofuel portion)") %>% 
  ggplot(aes(x=variable, y=value)) +
  geom_boxplot(fill='steelblue') +
  theme(axis.text.x = element_text(angle = 90))

plot(a)