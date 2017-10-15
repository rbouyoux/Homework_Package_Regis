#' multi_excel
#'
#' @param path name and path of the excel file you wish to read are
#'
#' @return a list of dataframes
#' @import assertthat
#' @import readxl
#'
#' @examples my_csv_reader("/Users/regisbouyoux/Desktop/Data Science X-HEC/R/X_2017/Jour 4")
#' @export
multi_excel <- function(path) {

  assert_that(is.dir(dirname(path)))

  sheet_n <- length(excel_sheets(path))
  readxl_2 <- function(i) {read_xlsx(path,i)}
  lapply(c(1:sheet_n),readxl_2)
}
