
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggmemory

<!-- badges: start -->
<!-- badges: end -->

The goal of ggmemory is to present code and output as it was executed in
an interactive session; support is currently focused on data
manipulation pipelines and data visualization.

------------------------------------------------------------------------

# How.

-   Code is harvested from the history. This can be done via RStudio IDE
    or other means like `savehistory("temp_history.R")`.

-   Then the user can format the code to respect indentation conventions
    for pipelines. Recommended is using RStudio and
    `rstudioapi::executeCommand("reformatCode")` or menu options to do
    the same. *On wish list is to do this reformatting step
    programmatically formatR::tidy\_source() seems promising, but does
    not work on code containing errors. Error free code for interactive
    sessions does not seem realistic*.

-   Then, the ggmemory function `r_code_extract_code_list` can be used
    on the reformated .R file containing the history. This function
    further parses code into a list containing individual pipelines or
    single lines of code based on indentation that compose the entire
    history.

``` r
library(magrittr)
#> Warning: package 'magrittr' was built under R version 3.6.2
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
#> [[1]]
#> [1] "library(ggplot2)"
#> 
#> [[2]]
#> [1] "ggplot(data = cars) +"             "  aes(x = speed) +"               
#> [3] "  aes(y = dist) +"                 "  geom_point(color = \"magenta\")"
#> 
#> [[3]]
#> [1] "ggplot(data = cars) +"             "  aes(x = speed) +"               
#> [3] "  aes(y = dist) +"                 "  geom_point(color = \"magenta\","
#> [5] "             size = 8)"           
#> 
#> [[4]]
#> [1] "ggplot(data = cars) +"             "  aes(x = speed) +"               
#> [3] "  aes(y = dist) +"                 "  geom_point(color = \"magenta\","
#> [5] "             size = 8,"            "             alpha = .5)"
```

-   Finally, this list with the code sequence can be entered as an
    argument to the function `chunk_reveal` from the {flipbookr}
    package, used with {xaringan}. Each slide in the Xaringan slide show
    will display a code execution moment of the interactive session by
    the user.  
    \`

``` r
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
```

`flipbookr::chunk_reveal(code_seq = my_executions)`

-   A template is provided with the ideal set up for the {xaringan}
    slides; i.e. `error = TRUE`

*Steps 3-5 might be bundled up in the future.*

# Precidents and Motivation.

flipbookr was designed to present curated code pipelines or code
experiences (rotating arguments). Consumers can see how you might build
up a chart or data manipulation pipeline. However, the experiences are
rather curated, and not true to how data manipulation is actually
conduction – probably not as linear as the ‘classic flipbookr’
presentations.

Moreover, action *within lines* – for example changing color of a point
geom or size: geom\_point() -&gt; geom\_point(size = 12) – is tricky to
demonstrate using classic {flipbookr} presentations. Motivation for
working on {memory} are other packages, whose within-line changes are
where important points of decision: {ggstamp} and {ggsample}.

## Related work.

{camcorder} is a package that seeks to capture all *data visualizations*
produced in an interactive session. These are then reproduced together
in a gif. The package’s focus is on evolution of the output rather than
translation between code and output. The strategy to achieve this too,
is fairly different from {memory}.
