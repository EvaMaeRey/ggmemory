library(tidyverse)
1 + 1
cars
cars %>%
  mutate(slow = speed < 15)
cars %>%
  mutate(slow = speed < 15) %>%
  tail()
cars %>%
  mutate(slow = speed < 15) %>%
  tail() %>%
  .[,2]
cars %>%
  mutate(slow = speed < 15) %>%
  tail() %>%
  .[,2] %>%
  length()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(size = 4)
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(size = 4) +
  ggxmean::geom_lm()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(size = 4) +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(alpha = .75,
             size = 4) +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(alpha = .75,
             size = 4,
             color = "green") +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(alpha = .75, size = 4,
             color = "green",
             shape = "square") +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_point(alpha = .75, size = 4,
             color = "green",
             shape = "square") +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula(size = 8)
ggplot() +
