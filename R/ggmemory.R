

#' Save a history and fix indentation (reformat code in RStudio),
#' then extract ggplots
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
  dplyr::summarise(code = paste0(.data$code, collapse = "\\n")) %>%
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
