#' 
#' @export
#' 

DANGERvarsEXTRACTDS <- function(xName=NULL,yName=NULL, zName=NULL){

 if(!is.null(xName)){
    xvar <- eval(parse(text=xName))
}

 if(!is.null(yName)){
    yvar <- eval(parse(text=yName))
}

 if(!is.null(zName)){
    zvar <- eval(parse(text=zName))
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

DANGERvarsDF<-data.frame(output.matrix)
names(DANGERvarsDF)<-varnames.vector
return(DANGERvarsDF)
}

#AGGEGATE FUNCTION
#DANGERvarsEXTRACTDS

