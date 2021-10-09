library(tidyverse)
read_csv(
  "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-05/nurses.csv"
)
nurses <-
  read_csv(
    "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-05/nurses.csv"
  )
nurses
nurses_raw <-
  read_csv(
    "https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-05/nurses.csv"
  )
nurses_raw
nurses_raw %>%
  janitor::clean_names()
nurses_raw %>%
  janitor::clean_names() ->
  nurses
nurses
nurses %>%
  ggplot()
nurses %>%
  ggplot() +
  aes(x = year)
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn)
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  geom_point()
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  geom_point(size = 4)
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  geom_point(size = 4,
             alpha = .4)
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  geom_point(size = 4,
             alpha = .4) +
  scale_y_log10()
option(scipen = 10)
options(scipen = 10)
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  geom_point(size = 4,
             alpha = .4) +
  scale_y_log10()
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  geom_point(size = 4,
             alpha = .4,
             shape = 21) +
  scale_y_log10()
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  geom_point(
    size = 4,
    alpha = .4,
    shape = 21,
    fill = "magenta"
  ) +
  scale_y_log10()
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  geom_point(
    size = 4,
    alpha = .4,
    shape = 21,
    fill = "magenta",
    color = "white"
  ) +
  scale_y_log10()
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  geom_point(
    size = 4,
    alpha = .7,
    shape = 21,
    fill = "magenta",
    color = "white"
  ) +
  scale_y_log10()
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  geom_line() +
  geom_point(
    size = 4,
    alpha = .7,
    shape = 21,
    fill = "magenta",
    color = "white"
  ) +
  scale_y_log10()
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  aes(group = state) +
  geom_line() +
  geom_point(
    size = 4,
    alpha = .7,
    shape = 21,
    fill = "magenta",
    color = "white"
  ) +
  scale_y_log10()
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  aes(group = state) +
  geom_line(color = "magenta") +
  geom_point(
    size = 4,
    alpha = .7,
    shape = 21,
    fill = "magenta",
    color = "white"
  ) +
  scale_y_log10()
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  aes(group = state) +
  geom_line(color = "magenta") +
  geom_point(
    size = 4,
    alpha = .7,
    shape = 21,
    fill = "magenta",
    color = "white"
  ) +
  scale_y_log10() +
  facet_wrap(facets = state)
nurses %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  aes(group = state) +
  geom_line(color = "magenta") +
  geom_point(
    size = 4,
    alpha = .7,
    shape = 21,
    fill = "magenta",
    color = "white"
  ) +
  scale_y_log10() +
  facet_wrap(facets = vars(state))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  ggplot() +
  aes(x = year) +
  aes(y = total_employed_rn) +
  aes(group = state) +
  geom_line(color = "magenta") +
  geom_point(
    size = 4,
    alpha = .7,
    shape = 21,
    fill = "magenta",
    color = "white"
  ) +
  scale_y_log10() +
  facet_wrap(facets = vars(state))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  ggplot() +
  aes(x = year) +
  aes(y = hourly_wage_avg) +
  aes(group = state) +
  geom_line(color = "magenta") +
  geom_point(
    size = 4,
    alpha = .7,
    shape = 21,
    fill = "magenta",
    color = "white"
  ) +
  scale_y_log10() +
  facet_wrap(facets = vars(state))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  ggplot() +
  aes(x = year) +
  aes(y = hourly_wage_avg) +
  aes(group = state) +
  geom_line(color = "magenta") +
  geom_point(
    size = 4,
    alpha = .7,
    shape = 21,
    fill = "magenta",
    color = "white"
  ) +
  facet_wrap(facets = vars(state))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median)
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median)
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = 1998, y = 2020) +
  geom_point()
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point()
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1, intercept = 0)
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal()
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = state)
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = state) +
  geom_point(color = "plum2")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = state) +
  geom_point(color = "plum2") +
  geom_segment(aes(xend = `2020`))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = state) +
  geom_point(color = "plum2") +
  geom_segment(aes(xend = `2020`, yend = state))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = state) +
  geom_point(color = "plum2") +
  geom_segment(aes(xend = `2020`, yend = state,
                   color = "plum2"))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = state) +
  geom_point(color = "plum2") +
  geom_segment(aes(xend = `2020`, yend = state), color = "plum2")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = state) +
  geom_point(color = "plum2") +
  geom_segment(aes(xend = `2020`, yend = state), color = "plum2") +
  geom_point(aes(x = `2020`))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = state) +
  geom_point(color = "plum2") +
  geom_segment(aes(xend = `2020`, yend = state), color = "plum2") +
  geom_point(aes(x = `2020`),
             color = "plum4")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = state) +
  geom_point(color = "plum3") +
  geom_segment(aes(xend = `2020`, yend = state), color = "plum3") +
  geom_point(aes(x = `2020`),
             color = "plum4")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  mutate(state = fct)
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = state) +
  geom_point(color = "plum3") +
  geom_segment(aes(xend = `2020`, yend = state), color = "plum3") +
  geom_point(aes(x = `2020`),
             color = "plum4")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  arrange(`1998`) %>%
  mutate(state = fct_inorder(state)) %>%
  ggplot() +
  aes(x = `1998`, y = state) +
  geom_point(color = "plum3") +
  geom_segment(aes(xend = `2020`, yend = state), color = "plum3") +
  geom_point(aes(x = `2020`),
             color = "plum4")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(xend = `1998`, yend = 0)
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "darkgrey")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  ggxmean::geom_lm()
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 60)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  ggxmean::geom_lm()
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_point() +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  ggxmean::geom_lm()
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm()
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 30)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 1998, $US")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 1998, $US")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 1998, $US") +
  ggpmisc::stat_dens2d_filter(geom = "text_repel",
                              keep.fraction = 0.25)
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 1998, $US") +
  ggrepel::geom_text_repel()
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 1998, $US") +
  ggrepel::geom_text_repel(aes(label = state))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 1998, $US") +
  ggrepel::geom_text_repel(aes(label = state))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 1998, $US") +
  ggpmisc::stat_dens2d_filter(geom = "text_repel", keep.fraction = 0.5)
install.packages("ggpmisc")
install.packages("ggpmisc")
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 1998, $US") +
  ggpmisc::stat_dens2d_filter(geom = "text_repel", keep.fraction = 0.5)
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 1998, $US") +
  ggrepel::geom_text_repel(aes(label = state),
                           data = . %>% sample_frac(.2))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 2020, $US") +
  ggrepel::geom_text_repel(aes(label = state),
                           data = . %>% sample_frac(.2))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 2020, $US") +
  ggrepel::geom_text_repel(aes(label = state %>%
                                 str_wrap(12)),
                           data = . %>% sample_frac(.2))
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 2020, $US") +
  ggrepel::geom_text_repel(aes(label = state %>%
                                 str_wrap(12),
                               lineheight = .8),
                           data = . %>% sample_frac(.2))
state
state.abb
state.name
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 2020, $US") +
  ggrepel::geom_text_repel(aes(label = state %>%
                                 str_wrap(12),
                               lineheight = .8),
                           data = . %>% sample_frac(.2)) +
  scale_y_continuous(labels = scales::dollar_format())
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 2020, $US") +
  ggrepel::geom_text_repel(aes(label = state %>%
                                 str_wrap(12),
                               lineheight = .8),
                           data = . %>% sample_frac(.2)) +
  scale_y_continuous(labels = scales::dollar_format()) +
  scale_x_continuous(labels = scales::dollar_format())
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 2020, $US") +
  ggrepel::geom_text_repel(aes(label = state %>%
                                 str_wrap(12),
                               lineheight = .8),
                           data = . %>% sample_frac(.2)) +
  scale_y_continuous(labels = scales::dollar_format()) +
  scale_x_continuous(labels = scales::dollar_format()) +
  theme_minimal()
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 2020, $US") +
  ggrepel::geom_text_repel(aes(label = state %>%
                                 str_wrap(12),
                               lineheight = .8),
                           data = . %>% sample_frac(.2)) +
  scale_y_continuous(labels = scales::dollar_format()) +
  scale_x_continuous(labels = scales::dollar_format()) +
  theme_minimal() +
  ggstamp::stamp_arrow(x = 35,
                       y = 35,
                       xend = 35,
                       yend = 50)
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 2020, $US") +
  ggrepel::geom_text_repel(aes(label = state %>%
                                 str_wrap(12),
                               lineheight = .8),
                           data = . %>% sample_frac(.2)) +
  scale_y_continuous(labels = scales::dollar_format()) +
  scale_x_continuous(labels = scales::dollar_format()) +
  theme_minimal() +
  ggstamp::stamp_arrow(
    x = 35,
    y = 35,
    xend = 35,
    yend = 60,
    size = 1
  )
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 2020, $US") +
  ggrepel::geom_text_repel(aes(label = state %>%
                                 str_wrap(12),
                               lineheight = .8),
                           data = . %>% sample_frac(.2)) +
  scale_y_continuous(labels = scales::dollar_format()) +
  scale_x_continuous(labels = scales::dollar_format()) +
  theme_minimal() +
  ggstamp::stamp_arrow(
    x = 35,
    y = 35,
    xend = 35,
    yend = 60,
    size = .5
  ) +
  ggstamp::stamp_text(
    x = 38,
    y = 50,
    size = 4,
    label = "Gain median wage",
    angle = 90
  )
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 2020, $US") +
  ggrepel::geom_text_repel(aes(label = state %>%
                                 str_wrap(12),
                               lineheight = .8),
                           data = . %>% sample_frac(.2)) +
  scale_y_continuous(labels = scales::dollar_format()) +
  scale_x_continuous(labels = scales::dollar_format()) +
  theme_minimal() +
  ggstamp::stamp_arrow(
    x = 35,
    y = 35,
    xend = 35,
    yend = 60,
    size = .5
  ) +
  ggstamp::stamp_text(
    x = 38,
    y = 50,
    char_width = 12,
    size = 4,
    label = "Gain median wage",
    angle = -90
  )
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median)
nurses %>%
  filter(state != "Guam" &
           state != "Virgin Islands" &
           state != "Puerto Rico") %>%
  filter(year %in% range(year)) %>%
  select(state, year, hourly_wage_median) %>%
  pivot_wider(names_from = year, values_from = hourly_wage_median) %>%
  ggplot() +
  aes(x = `1998`, y = `2020`) +
  geom_abline(slope = 1,
              intercept = 0,
              linetype = "dashed") +
  coord_equal(ylim = c(0, 60),
              xlim = c(0, 40)) +
  labs(title = "Median hourly wage, 1998 and 2020",
       subtitle = "50 US States and District of Columbia") +
  geom_segment(aes(xend = `1998`, yend = 0),
               color = "grey")  +
  geom_segment(aes(xend = `1998`, yend = `1998`),
               color = "grey35") +
  geom_point() +
  ggxmean::geom_lm() +
  labs(x = "Hourly wage in 1998, $US") +
  labs(y = "Hourly wage in 2020, $US") +
  ggrepel::geom_text_repel(aes(label = state %>%
                                 str_wrap(12),
                               lineheight = .8),
                           data = . %>% sample_frac(.2)) +
  scale_y_continuous(labels = scales::dollar_format()) +
  scale_x_continuous(labels = scales::dollar_format()) +
  theme_minimal() +
  ggstamp::stamp_arrow(
    x = 35,
    y = 35,
    xend = 35,
    yend = 60,
    size = .75
  ) +
  ggstamp::stamp_text(
    x = 38,
    y = 50,
    char_width = 12,
    size = 4,
    label = "Gain median wage",
    angle = -90
  )
