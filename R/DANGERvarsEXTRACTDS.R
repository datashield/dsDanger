#' @title DANGERvarsEXTRACT
#' @description DANGERvarsEXTRACT
#' @details DANGER function
#' @param xName character string naming first variable to be copied
#' from serverside to clientside
#' @param yName character string naming second variable to be copied
#' from serverside to clientside
#' @param zName character string naming third variable to be copied
#' from serverside to clientside
#' @param uName character string naming fourth variable to be copied
#' from serverside to clientside
#' @param vName character string naming fifth variable to be copied
#' from serverside to clientside
#' @param wName character string naming sixth variable to be copied
#' from serverside to clientside
#' @return DANGER function
#' @author DataSHIELD Development Team
#' @export

DANGERvarsEXTRACTDS <- function(xName=NULL,yName=NULL,zName=NULL,uName=NULL,vName=NULL,wName=NULL){

  if(!is.null(xName)){
    xvar <- eval(parse(text=xName))
  }
  if(!is.null(yName)){
    yvar <- eval(parse(text=yName))
  }
  if(!is.null(zName)){
    zvar <- eval(parse(text=zName))
  }

  if(!is.null(uName)){
    uvar <- eval(parse(text=uName))
  }
  if(!is.null(vName)){
    vvar <- eval(parse(text=vName))
  }
  if(!is.null(wName)){
    wvar <- eval(parse(text=wName))
  }

  varnames.vector<-xName
  output.matrix<-matrix(xvar)

  if(!is.null(yName)){
    varnames.vector<-c(varnames.vector,yName)
    output.matrix<-cbind(output.matrix,yvar)
  }

  if(!is.null(zName)){
    varnames.vector<-c(varnames.vector,zName)
    output.matrix<-cbind(output.matrix,zvar)
  }

  if(!is.null(uName)){
    varnames.vector<-c(varnames.vector,uName)
    output.matrix<-cbind(output.matrix,uvar)
  }
  if(!is.null(vName)){
    varnames.vector<-c(varnames.vector,vName)
    output.matrix<-cbind(output.matrix,vvar)
  }
  if(!is.null(wName)){
    varnames.vector<-c(varnames.vector,wName)
    output.matrix<-cbind(output.matrix,wvar)
  }

  DANGERvars<-data.frame(output.matrix)
  names(DANGERvars)<-varnames.vector
  return(DANGERvars)
}

#AGGEGATE FUNCTION
# DANGERvarsEXTRACTDS
