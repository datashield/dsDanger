#' @title DANGER function returning data.frame (df) from processing servers to
#' clientside - *** DEPRECATED DANGERdmtEXTRACTDS *** 
#' @description DANGERdfEXTRACTDS copies a df from data servers to clientside. 
#' @details *** DEPRECATED BY DANGERdmtEXTRACTDS ***
#' @param dataframeName character string that specifies the name of the df 
#' to be copied from the serverside to the clientside 
#' @return the serverside df specified by name dataframeName as a
#' data.frame/matrix/tibble on the clientside.
#' @author DataSHIELD Development Team
#' @export
DANGERdfEXTRACTDS <- function(dataframeName=NULL){

 if(!is.null(dataframeName)){
    extractDF <- eval(parse(text=dataframeName))
  }else{
	return("PLEASE SPECIFY THE NAME OF A data.frame TO EXTRACT")
  }
return(extractDF)
}

#AGGEGATE FUNCTION
#DANGERdfEXTRACTDS

