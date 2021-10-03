library(tidyverse)
1 + 1
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
geom_point(alpha = 2, size = 4,
color = "green") +
ggxmean::geom_lm() +
ggxmean::geom_lm_formula()
cars %>%
mutate(slow = speed < 15)
ggplot() +
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(alpha = .5) +
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
color = "green",
shape = "square") +
ggxmean::geom_lm() +
ggxmean::geom_lm_formula()
#'
#' @param script_path a path to a prepared r code script (prepared history)
#' @param code r code or path to script
#'
#' @return a list containing ggplot code lines as vectors.
#' @export
#'
#' @examples
#' code = write_ggplots_code_example()
#' r_code_extract_ggplots_code_list(code = code)
r_code_extract_ggplots_code_list <- function(script_path = NULL, code = readLines(script_path)){
if(is.null(script_path)) {
stringr::str_split(code, "\\n")[[1]] -> code
}
tibble::tibble(code = code) %>%
dplyr::mutate(starts_with_gg = stringr::str_detect(.data$code, "^gg")) %>%
dplyr::mutate(gg_group = cumsum(.data$starts_with_gg)) %>%
dplyr::mutate(is_indented = stringr::str_detect(.data$code, "^\\s")) %>%
dplyr::filter(.data$starts_with_gg | .data$is_indented) %>%
dplyr::filter(.data$gg_group != 0) %>%
dplyr::group_by(.data$gg_group) %>%
dplyr::summarise(code = paste0(.data$code, collapse = "hellothere")) %>%
dplyr::mutate(code = stringr::str_split(code, "hellothere")) %>%
dplyr::pull(.data$code)
}
#'
#' @param script_path a path to a prepared r code script (prepared history)
#' @param code r code or path to script
#'
#' @return a list containing ggplot code lines as vectors.
#' @export
#'
#' @examples
#' code = write_ggplots_code_example()
#' r_code_extract_code_list(code = code)
r_code_extract_code_list <- function(script_path = NULL, code = readLines(script_path)){
if(is.null(script_path)) {
stringr::str_split(code, "\\n")[[1]] -> code
}
tibble::tibble(code = code) %>%
dplyr::mutate(is_indented = stringr::str_detect(.data$code, "^\\s")) %>%
dplyr::mutate(not_indented = !is_indented) %>%
dplyr::mutate(pipe_group = cumsum(.data$not_indented)) %>%
dplyr::group_by(.data$pipe_group) %>%
dplyr::summarise(code = paste0(.data$code, collapse = "hellothere")) %>%
dplyr::mutate(code = stringr::str_split(code, "hellothere")) %>%
dplyr::pull(.data$code)
}
#' some example code
#'
#' @return
#' @export
#'
write_ggplots_code_example <- function(){
'ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_count(alpha = .5) +
ggxmean::geom_lm() +
ggxmean::geom_lm_formula()
library(ggplot2)
set.seed(1323)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(alpha = .5)
set.seed(1323)
library(ggplot2)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "olivedrab4") +
ggxmean::geom_lm() +
labs(caption = "Population are observations from cars correlation study dataset") +
facet_sample(n_sampled = 8) +
labs(title = "16 draws, random sample of 8 observations from the population") +
labs(subtitle = "Depending on our particular random sample, slopes are flatter or steeper\nand intercepts vary")
set.seed(1323)
library(ggplot2)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "olivedrab4") +
ggxmean::geom_lm() +
labs(caption = "Population are observations from cars correlation study dataset") +
labs(title = "16 draws, random sample of 8 observations from the population") +
labs(subtitle = "Depending on our particular random sample,
slopes are flatter or steeper\nand intercepts vary")
set.seed(1323)
library(ggplot2)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "olivedrab4") +
ggxmean::geom_lm() +
labs(caption = "Population are observations from cars correlation study dataset") +
labs(title = "16 draws, random sample of 8 observations from the population") +
labs(subtitle = "Depending on our particular random sample,
slopes are flatter or steeper and intercepts vary")
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "olivedrab4") +
ggxmean::geom_lm() +
labs(caption = "Population are observations from cars correlation study dataset") +
labs(title = "16 draws, random sample of 8 observations from the population") +
labs(subtitle = "Depending on our particular random sample,
slopes are flatter or steeper and intercepts vary") +
ggxmean::geom_lm_label()'
}
history()
savehistory()
savehistory(file = "docs/my_history.")
savehistory(file = "docs/my_history.R")
savehistory(file = "temp_history.R")
install.packages("formatR")
install.packages("formatR")
formatR::tidy_source("docs/my_history.R")
library(formatR)
tidy_file("docs/my_history.R")
readLines("docs/my_history.R")
readLines("docs/my_history.R")[[1]]
readLines("docs/my_history.R") %>%
tidy_source()
tidy_source("docs/my_history.R")
tidy_source()
tidy_source()
install.packages("formatR"
tidy_source()
tidy_source()
tidy_source()
tidy_source()
tidy_source()
savehistory("docs/my_history.R")
file = "temp_history.R"
savehistory(file = file)
readLines(file = file)
readLines(path = file)
readLines(con = file)
readLines(con = file) ->
my_lines
start <- length(my_lines) - n
savehistory(file = file)
readLines(con = file) ->
my_lines
start <- length(my_lines) - n
end <- length(my_lines)
my_lines <- my_lines[start:end]
file = "temp_history.R"
savehistory(file = file)
readLines(con = file) ->
my_lines
my_lines
length(my_lines)
start <- length(my_lines) - n
end <- length(my_lines)
my_lines <- my_lines[start:end]
savehistory_last_n <- function(file = "temp_history.R", n = 100){
savehistory(file = file)
readLines(con = file) ->
my_lines
start <- length(my_lines) - n
end <- length(my_lines)
my_lines <- my_lines[start:end]
}
readLines(con = file) ->
my_lines
start <- length(my_lines) - n
end <- length(my_lines)
my_lines <- my_lines[start:end]
n = 100
savehistory(file = file)
