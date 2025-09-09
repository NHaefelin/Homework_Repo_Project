#load the packages

library(ggplot2)

library(EVR628tools)

EVR628tools::create_dirs()

#load data
data("data_lionfish")

#build a plot

p <- ggplot (data = data_lionfish,
        mapping = aes(x = total_length_mm, y = depth_m)) +
  geom_line(color = "darkblue")

usethis::git_vaccinate()

#export my plot
ggsave(plot = p, filename = "results/img/my_plot.pdf")
