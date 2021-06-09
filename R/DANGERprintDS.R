#' @title DANGERprintDS
#' @description DANGERprintDS
#' @details DANGER function
#' @param xName character string naming first object to be
#' printed on clientside
#' from serverside to clientside
#' @param yName character string naming second object to be
#' printed on clientside
#' @param zName character string naming third object to be 
#' printed on clientside
#' @return DANGER function
#' @author DataSHIELD Development Team
#' @export
DANGERprintDS <- function(xName=NULL,yName=NULL, zName=NULL){

 if(!is.null(xName)){
    xvar <- eval(parse(text=xName))
}

 if(!is.null(yName)){
    yvar <- eval(parse(text=yName))
}

 if(!is.null(zName)){
    zvar <- eval(parse(text=zName))
}


output.vector<-NULL

if(!is.null(xName)){output.vector<-c(output.vector,xvar)}
if(!is.null(yName)){output.vector<-c(output.vector,yvar)}
if(!is.null(zName)){output.vector<-c(output.vector,zvar)}

DANGERprint.output.vector<-output.vector
return(DANGERprint.output.vector)
}

#AGGREGATE FUNCTION
# DANGERprintDS

