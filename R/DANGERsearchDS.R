#' 
#' @title lists all environments on serverside
#' @description creates a list of the names of all of the serverside
#' environments
#' @details Serverside aggregate function {DANGERsearchDS} called by clientside function
#' {ds.DANGERsearch}. No arguments need to be specified
#' @return a vector of character strings to the clientside giving the names of
#' each of the R environments on the serverside in order of their numeric "pos"
#' @author Paul Burton 2020
#' @export
DANGERsearchDS<-function(){
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

outobj<-search()

outlist<-list(outobj=outobj)

return(outobj)
}

#AGGREGATE FUNCTION
# DANGERsearchDS
