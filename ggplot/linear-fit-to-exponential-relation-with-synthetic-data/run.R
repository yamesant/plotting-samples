library(tidyverse)
set.seed(0)

n <- 100
data <- tibble(
  x = rnorm(n, mean = 0, sd = 1),
  y = exp(x) + rnorm(n, mean = 0, sd = 1),
)

ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm", se = F, col = 'brown') +
  theme_minimal() +
  labs(
    title = "Linear Fit to Exponential Relation",
    x = 'X',
    y = 'Y',
  ) +
  theme(
    axis.title.y = element_text(angle = 0, vjust = 0.5),
    plot.background = element_rect(fill = "white", colour = "white"),
    plot.margin = margin(30, 30, 30, 30),
  )

plot.name <- 'linear-fit-to-exponential-relation.png'
path <- dirname(sys.frame(1)$ofile)
ggsave(file.path(path, plot.name), width = 9, height = 6)
