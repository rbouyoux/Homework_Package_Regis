#' draw_names
#'
#' @param x a vector containint the names you wish to get data on
#'
#' @return one graph with the year by year poopularity of the names in the vector parameter
#' @import assertthat
#' @import ggplot2
#' @import dplyr
#'
#' @examples draw_names(c("Diane", "Vincent"))
#' @export
draw_names <- function(x){

  assert_that(is.character(x))

  prenoms %>% filter(name %in% x) %>%
    group_by(year, name) %>%
    summarise(total = sum(n)) %>%
    ggplot(aes(x = year, y = total, group = name, color = name)) +
    geom_line() +
    ggtitle("Draw_name")
}
