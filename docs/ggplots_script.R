ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_count(alpha = .5, size = 4) +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_count(alpha = 2, size = 4) +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_count(alpha = 2, size = 4,
             color = "green") +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_count(alpha = 2, size = 4,
             color = "green",
             shape = "square") +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot() +
