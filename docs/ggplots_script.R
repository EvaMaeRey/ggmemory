library(tidyverse)
1 + 1
cars %>%
  mutate(slow = speed < 15)
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(alpha = .5) +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(alpha = .5) +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(alpha = .5, size = 4) +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(alpha = 2, size = 4) +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(alpha = 2, size = 4,
             color = "green") +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(alpha = 2, size = 4,
             color = "green",
             shape = "square") +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot() +
