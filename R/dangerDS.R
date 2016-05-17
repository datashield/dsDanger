#'
#' @title Returns any object to the client side
#' @description DANGER - special function to allow analysts to look at server side objects
#' on the client side
#' @details this function is not meant to be used anywhere except in a development environment
#' It is designed to give the analyst access to the data (i.e. a route through the DataSHIELD
#' defences)
#' @param x the name of the server side object that will be returned
#' @return a numeric, the statistical mean
#' @author Bishop, T.
#' @export
#'
dangerDS <- function (x) {
  
  return(x)
}
