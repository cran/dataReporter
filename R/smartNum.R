#' @title Smart class to handle numerics as factor
#'
#' @description S3 class meant for representing numeric variables that act like 
#' factor variables by taking only a few different values. This class
#' is used in makeDataReport() in order to get appropriate summaries, visualizations
#' and checks for such variables. In other words, such variables will be
#' treated like factor variables instead of numerics.
#'
#' @param v A numeric vector 
#'
#' @return A \code{smartNum} object that is handled in \code{makeDataReport} in the same way as a factor.
#'
#' @export
smartNum <- function(v) {
    oriClass <- class(v)
    origLabel <- attr(v, "label", exact = TRUE)
    origDesc <- attr(v, "shortDescription")
    v <- factor(v)
    attr(v, "label") <- origLabel
    attr(v, "shortDescription") <- origDesc
    attr(v, "originalClass") <- oriClass
    class(v) <- c("smartNum", "factor")
    v
}


#Get the original class of a smartNum or fakeLabelled object. Used in makeDataReport().
oClass <- function(v) UseMethod("oClass")

#' @exportS3Method
oClass.default <- function(v) {
  oC <- attr(v, "orginalClass")
  if (!is.null(oC)) return(oC)
  else class(v)
}

#' @exportS3Method
oClass.smartNum <- function(v) attr(v, "originalClass")

#' @exportS3Method
oClass.fakeLabelled <- function(v) attr(v, "originalClass")
