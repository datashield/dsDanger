#' @title DANGERseedEXTRACT
#' @description DANGERseedEXTRACT
#' @details DANGER function
#' @return DANGER function
#' @author DataSHIELD Development Team
#' @export

DANGERseedEXTRACTDS <- function(){
  
  DANGERseed.output <- getOption('datashield.seed')
  return(DANGERseed.output)
  
}

# AGGREGATE FUNCTION
# DANGERseedEXTRACTDS