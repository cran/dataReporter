#' @title Vector of all variable classes in \code{dataReporter}
#'
#' @description Returns the names of the eight data classes for which
#' \code{dataReporter} is implemented, namely \code{"character"}, \code{"Date"},
#' \code{"factor"}, \code{"integer"}, \code{"labelled"}, 
#' \code{"haven_labelled"}, \code{"logical"} and
#' \code{"numeric"}.
#'
#' @examples
#' allClasses()
#'
#' @export
allClasses <- function() {
  c("character", "Date", "factor", "integer", "labelled", 
    "haven_labelled",
    "logical", "numeric")
}
