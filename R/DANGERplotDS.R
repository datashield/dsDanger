#' 
#' @export
#' 

DANGERplotDS <- function (x.name=NULL,y.name=NULL)
{
    command.text<-paste0("cbind(",x.name,",",y.name,")")

    DANGERplot.obj<-eval(parse(command.text))

    return(DANGERplot.obj)
}
#AGGREGATE FUNCTION
# DANGERplotDS

