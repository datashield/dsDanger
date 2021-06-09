#' @title DANGER function returning data.frame, Matrix or tibble (DMT) from
#' processing servers to clientside
#' @description DANGERdmtEXTRACTDS copies a DMT from data servers to clientside. 
#' @details Serverside aggregate function DANGERdmtEXTRACTDS
#' called by ds.DANGERdmtEXTRACT. DANGER FUNCTION: must not be
#' installed on data processing servers holding
#' real data. ONLY TO BE USED FOR DEVELOPMENT PURPOSES.
#' For more information about how it works see help for ds.DANGERdmtEXTRACT
#' @param dfName is a character string that specifies the name of the DMT 
#' to be copied from the serverside to the clientside. Fully speciifed
#' by <dfName> argument in ds.DANGERdmtEXTRACT
#' @return the serverside dmt specified by name dfName as a
#' data.frame/matrix/tibble on the clientside.
#' @author Paul Burton for DataSHIELD Development Team - 4th June, 2021
#' @export
DANGERdmtEXTRACTDS <- function(dfName){

 if(!is.null(dfName)){
    extractDF <- eval(parse(text=dfName))
  }else{
	return("PLEASE SPECIFY THE NAME OF A data.frame, matrix or tibble TO EXTRACT")
  }


        return(extractDF)
}

#AGGEGATE FUNCTION
# DANGERdmtEXTRACTDS



