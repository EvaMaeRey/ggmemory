ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_count(alpha = .5) +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_count(alpha = 2) +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_count(alpha = 2,
             color = "green") +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
ggplot(data = cars) +
  aes(x = speed) +
  aes(y = dist) +
  geom_count(alpha = 2,
             color = "green",
             shape = "square") +
  ggxmean::geom_lm() +
  ggxmean::geom_lm_formula()
