#' @title determines how a given R object or character string is managed by the DataSHIELD parser
#' @description presents an R object or character string to the DataSHIELD R parser
#' and determines whether it is passed by the parser and, if so, what form it
#' takes after it has traversed the parser. 
#' @details Serverside aggregate function {DANGERpassPARSERDS} called by clientside function
#' {ds.DANGERpassPARSER} which presents an R object or character string to the DataSHIELD R parser
#' and determines whether it is passed or blocked by the parser. If it passes,
#' it then explores what form it takes after it has traversed the parser. For further details
#' see help for {ds.DANGERpassPARSER}.
#' @param transmit.object fully specified by equivalent clientside argument.
#' @return information about whether the input object/string gets blocked or passed
#' by the parser. If it passes the parser, the object itself and a record of its class
#' are passed back to the clientside. 
#' @author Paul Burton (2020)
#' @export

DANGERpassPARSERDS<-function(transmit.object){

#########################################################################
# DataSHIELD MODULE: CAPTURE THE nfilter SETTINGS           			#
#thr <- dsBase::listDisclosureSettingsDS()								#
#nfilter.tab<-as.numeric(thr$nfilter.tab)								#
#nfilter.glm<-as.numeric(thr$nfilter.glm)								#
#nfilter.subset<-as.numeric(thr$nfilter.subset)          				#
#nfilter.string<-as.numeric(thr$nfilter.string)              			#
#nfilter.stringShort<-as.numeric(thr$nfilter.stringShort)    			#
#nfilter.kNN<-as.numeric(thr$nfilter.kNN)								#
#datashield.privacyLevel<-as.numeric(thr$datashield.privacyLevel)       #
#########################################################################



out.class<-class(transmit.object)
out.object<-transmit.object	
return(list(out.object=out.object,out.class=out.class))
}

#AGGREGATE FUNCTION
# DANGERpassPARSERDS
