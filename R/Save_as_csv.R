#' Save_as_csv
#'
#' @param dataset a dataset
#' @param filename name of the file you want to save your output as
#'
#' @return a dataset saved as a csv file
#' @import assertthat
#'
#' @examples save_as_csv(iris, "/Users/regisbouyoux/Desktop/Data Science X-HEC/R/X_2017/Jour 4/output.csv")
#' @export
save_as_csv <- function(dataset, filename){

  assert_that(has_extension(filename,"csv"))
  assert_that(is.dir(dirname(filename)))
  assert_that(is.writeable(dirname(filename)))
  assert_that(not_empty(dataset))
  assert_that(is.data.frame(dataset))

  write.csv(x = dataset, file = filename)
  invisible(normalizePath(filename))
}
