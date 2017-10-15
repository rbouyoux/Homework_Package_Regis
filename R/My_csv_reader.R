#' My_csv_reader
#'
#' @param folder Path of the folder where the files you wish to read is located
#'
#' @return returns a list of dataframes, each list is a file
#' @import assertthat
#'
#' @examples my_csv_reader("/Users/regisbouyoux/Desktop/Data Science X-HEC/R/X_2017/Jour 4")
#' @export
my_csv_reader <- function(folder = getwd()) {

  assert_that(is.dir(folder))

  files <- (list.files(folder, pattern = ".*csv$", full.names = TRUE))
  output <- lapply(files,read.csv)
  names(output) <- basename(files)
  return (output)
}
