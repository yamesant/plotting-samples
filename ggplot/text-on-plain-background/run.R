library(tidyverse)

text_content <- "
ATFATHAKSD
DVKHALGETG
FTFREVDDRL
VGDYAPRWRA
"

df <- tibble(
  x = 0.5,
  y = 0.5,
  label = text_content
)

ggplot(df, aes(x, y, label = label)) +
  geom_text(
    size = 11,
    fontface = "bold",
    family = "Comic Sans MS"
  ) +
  xlim(0, 1) + ylim(0, 1) +
  theme_void() +
  theme(
    plot.background = element_rect(fill = "#E49B0F", colour = NA)
  )

ggsave("./ggplot/text-on-plain-background/text-on-plain-background.png", width = 6, height = 4, dpi = 200)