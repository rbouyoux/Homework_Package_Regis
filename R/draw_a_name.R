#' draw_a_name
#'
#' @param a name your are interested in
#' @param b sex you are intersted in
#'
#' @return a graph of the year-by-year popularity of the chosen name for the chosen sex
#' @import assertthat
#' @import ggplot2
#' @import dplyr
#'
#' @examples draw_a_name("Vincent", "M")
#' @export
draw_a_name <- function(a,b){

  assert_that(is.string(a))
  assert_that(is.string(b))

  prenoms %>% filter(name == a, sex == b) %>%
    group_by(year) %>%
    summarise(total = sum(n)) %>%
    ggplot(aes(x = year, y = total)) + geom_line()
}
