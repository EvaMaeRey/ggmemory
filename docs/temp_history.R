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
"ggplot() +"
sf <- srcfile(code)
code = "ggplot() +"
sf <- srcfile(code)
try(parse(text = code, srcfile = sf))
utils::getParseData(sf)
history()
savehistory("docs/temp_history.R") # nicely saves history...
savehistory(file = ".Rhistory")
history(max.show = 25, reverse = FALSE, pattern, ...)
savehistory("docs/temp_history.R") # nicely saves history...
savehistory(file = ".Rhistory")
history(max.show = 25, reverse = FALSE)
savehistory("docs/temp_history.R") # nicely saves history...
savehistory(file = ".Rhistory")
history(max.show = 25, reverse = FALSE)
savehistory("docs/temp_history.R") # nicely saves history...
savehistory(file = ".Rhistory")
history(max.show = 25, reverse = FALSE)
savehistory("docs/temp_history.R") # nicely saves history...
savehistory("temp_history.R") # nicely saves history...
savehistory(file = ".Rhistory")
history(max.show = 25, reverse = FALSE, )
"hi"
savehistory("temp_history.R") # nicely saves history...
savehistory(file = ".Rhistory")
history(max.show = 25, reverse = FALSE, )
code = "ggplot() +"
sf <- srcfile(code)
try(parse(text = code, srcfile = sf))
utils::getParseData(sf)
"hi"
savehistory("temp_history.R") # nicely saves history...
savehistory(file = ".Rhistory")
history(max.show = 25, reverse = FALSE, )
code = "ggplot() +"
sf <- srcfile(code)
try(parse(text = code, srcfile = sf))
utils::getParseData(sf)
code = "ggplot() +"
sf <- srcfile(code)
try(parse(text = code, srcfile = sf))
utils::getParseData(sf)
rstudioapi::executeCommand("reformatCode")
rstudioapi::executeCommand("reformatCode")
rstudioapi::executeCommand("reformatCode", quiet = F)
rstudioapi::executeCommand("reformatCode", quiet = F)
rstudioapi::executeCommand("reformatCode", quiet = F)
savehistory("temp_history.R") # nicely saves history...
savehistory(file = ".Rhistory")
1+1
savehistory("temp_history.R") # nicely saves history...
savehistory(file = ".Rhistory")
?savehistory
code = "ggplot() +"
sf <- srcfile(code)
try(parse(text = code, srcfile = sf))
utils::getParseData(sf)
code = "ggplot() +"
sf <- srcfile(code)
try(parse(text = code, srcfile = sf))
utils::getParseData(sf)
usethis::use_readme_rmd()
alpha = .5)' %>%
'library(ggplot2)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta")
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta",
size = 8)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta",
size = 8,
alpha = .5)' %>%
r_code_extract_code_list()
'library(ggplot2)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta")
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta",
size = 8)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta",
size = 8,
alpha = .5)' %>%
ggmemory::r_code_extract_code_list()
library(magrittr)
'library(ggplot2)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta")
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta",
size = 8)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta",
size = 8,
alpha = .5)' %>%
ggmemory::r_code_extract_code_list()
library(magrittr)
'library(ggplot2)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta")
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta",
size = 8)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta",
size = 8,
alpha = .5)' %>%
ggmemory::r_code_extract_code_list(code = .)
size = 8)' %>%
'library(ggplot2)
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta")
ggplot(data = cars) +
aes(x = speed) +
aes(y = dist) +
geom_point(color = "magenta",
size = 8)' %>%
ggmemory::r_code_extract_code_list(code = .) ->
my_executions
flipbookr::chunk_reveal(code_seq = my_executions)
knitr::include_graphics("https://giphy.com/embed/777Aby0ZetYE8")
knitr::include_graphics("https://media1.giphy.com/media/777Aby0ZetYE8/giphy.gif?cid=ecf05e47fxfri9ro2qxy8i7jhnalmh6lsnmpabijv8e8oo5n&rid=giphy.gif&ct=g")
code = "ggplot() +"
sf <- srcfile(code)
parse(text = code, srcfile = sf)
utils::getParseData(sf)
parse(text = code, srcfile = sf)
code = "ggplot() +"
sf <- srcfile(code)
try(parse(text = code, srcfile = sf))
utils::getParseData(sf)
code = "ggplot() +"
sf <- srcfile(code)
parse(text = code, srcfile = sf)
rstudioapi::executeCommand("reformatCode")
"hi"
"hi"
1+1
savehistory("temp_history.R") # nicely saves history...
