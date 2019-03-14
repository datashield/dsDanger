#' 
#' @export
#' 

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

