#' @title DANGERplotDS
#' @description DANGERplotDS
#' @details DANGER function
#' @param x.name character string naming first object to be
#' plotted on clientside
#' from serverside to clientside
#' @param y.name character string naming second object to be
#' plotted on clientside
#' @return DANGER function
#' @author DataSHIELD Development Team
#' @export

DANGERplotDS <- function (x.name=NULL,y.name=NULL)
{
    command.text<-paste0("cbind(",x.name,",",y.name,")")

    DANGERplot.obj<-eval(parse(command.text))

    return(DANGERplot.obj)
}
#AGGREGATE FUNCTION
# DANGERplotDS

