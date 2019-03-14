#' 
#' @export
#' 

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

