x <- 1:10
y <- 1:10
plot(mtcars$disp, mtcars$mpg)
abline(lm(mpg ~ disp, data = mtcars))
install.packages(c("car", "ggplot2"))

car::scatterplot(mpg ~ disp, 
                 data = mtcars)
library(ggplot2)
ggplot(data = mtcars, 
       mapping = aes(x = disp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm") + 
  theme_minimal()

install.packages('plotly')

#plotly::ggplotly(my_plot)

st_joe_land <- read.delim(file = "stJoeLand.csv", sep = ",")

install.packages(c("readr", "data.table"))

st_joe_land_readr <- readr::read_csv(file = "stJoeLand.csv")

st_joe_land_datatable <- data.table::fread(input = "stJoeLand.csv")
