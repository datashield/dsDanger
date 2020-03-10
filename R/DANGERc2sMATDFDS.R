#' @title DANGER FUNCTION copying clientside matrix to serverside
#' @description Creates a matrix A on the serverside from matrix A on the clientside 
#' @details DANGERc2sMATDF is a serverside assign function called by ds.DANGERc2sMATDF
#' This is a DANGER FUNCTION because it gives the clientside analyst
#' a lot of power to create a data structure that is precise and complex
#' on the severside. In fact this may be absolutely fine - the general rule is that
#' concerns about disclosure relate entirely to aggregate functions rather than
#' assign functions. However, for the moment this wil be kept as a DANGER FUNCTION
#' and could later be considered for conversion to a standard function, if requested.
#' This DANGER function was created from the ds.matrix function.
#' A number of the parameters specifying the matrix to be generated
#' are fixed by the nature of the clientside matrix
#' itself rather than by explicitly stating them as arguments. In consequence, 
#' they have been removed from the list of arguments and are instead given invariant
#' values in the first few lines of code. These include: from<-"clientside.matdf",
#' nrows.scalar=NULL, ncols.scalar=NULL, byrow = FALSE. The <from> argument
#' was originally a character string specifying the source and nature of <mdata>. Because
#' this DANGER function is only intended to copy a clientside matrix or data.frame to the
#' serverside, its value is fixed to "clientside.matdf". The <nrows.scalar>
#' and <ncols.scalar> are fixed empirically by the number of rows and columns of
#' the matrix to be transferred. <byrow> specifies writing the serverside matrix by
#' columns or rows and this is always set as by column (i.e. FALSE).
#' @param mdata.transmit is a character string in a format that can pass through
#' the DataSHIELD R parser which specifies the name of the matrix or
#' data.frame to be copied from the clientside to the serverside. 
#' @param from a character string specifying the source and nature of <mdata>.
#' Fixed by clientside function to "clientside.matdf".
#' @param nrows.transmit specifies the number of rows in the matrix to be created
#' in a format that can pass through the DataSHIELD R parser. Fixed by the clientside
#' function as equal to the number of rows in the clientside matrix to be transferred
#' @param ncols.transmit specifies the number of columns in the matrix to be created
#' in a format that can pass through the DataSHIELD R parser. Fixed by the clientside
#' function as equal to the number of columns in the clientside matrix to be transferred
#' @param colnames.transmit a transmissable vector specifying the name of each column
#' in the matrix or data.frame being transferred from clientside to serverside.
#' Generated automatically by clientside function.
#' @param colclass.transmit a transmissable vector specifying the class of the vector representing
#' each column in the matrix or data.frame being transferred from clientside to serverside.
#' Generated automatically by clientside function. This allows the transmission of data.frames
#' containing data of multiple classes. 
#' @param byrow a logical value specifying whether the matrix created on the serverside
#' should be filled row by row or column by column fixed by the clientside function
#' as FALSE (fill column by column).
#' @param dimnames A dimnames attribute for the matrix: NULL or a list of length 2 giving
#' the row and column names respectively. An empty list is treated as NULL,
#' and a list of length one as row names only. If NULL (the default) the column names
#' of the original <mdata> data.frame or matrix are taken across to specify the 
#' column names of the serverside matrix
#' @return the object specified by the <newobj> argument (or default name "new_matrix")
#' which is written as a data.frame to the serverside. In addition,
#' two validity messages are returned indicating whether <newobj> has been created in each
#' data source and if so whether it is in a valid form.
#' @author Paul Burton for DataSHIELD Development Team
#' @export
#'
DANGERc2sMATDFDS <- function(mdata.transmit, from, nrows.transmit, ncols.transmit,
                             colnames.transmit,colclass.transmit, byrow, dimnames){


#########################################################################
# DataSHIELD MODULE: CAPTURE THE nfilter SETTINGS           			#
#thr<-dsBetaTest::listDisclosureSettingsDS.o()							#
#nfilter.tab<-as.numeric(thr$nfilter.tab)								#
#nfilter.glm<-as.numeric(thr$nfilter.glm)								#
#nfilter.subset<-as.numeric(thr$nfilter.subset)          				#
#nfilter.string<-as.numeric(thr$nfilter.string)              			#
#nfilter.stringShort<-as.numeric(thr$nfilter.stringShort)    			#
#nfilter.kNN<-as.numeric(thr$nfilter.kNN)								#
#datashield.privacyLevel<-as.numeric(thr$datashield.privacyLevel)       #
#########################################################################


#Evaluate mdata.transmit via route depending on <from>

if(from=="serverside.vector"||from=="serverside.scalar")
{
mdata<-eval(parse(text=mdata.transmit))
}


if(from=="clientside.scalar")
{
mdata.text<-strsplit(mdata.transmit, split=",")

mdata.c<-eval(parse(text=mdata.text))

mdata<-as.numeric(mdata.c)
}

if(from=="clientside.scalar")
{
mdata.text<-strsplit(mdata.transmit, split=",")

mdata.c<-eval(parse(text=mdata.text))

mdata<-as.numeric(mdata.c)
}

if(from=="clientside.matdf")
{
mdata.text<-strsplit(mdata.transmit, split=",")

mdata<-eval(parse(text=mdata.text))

serverside.vector<-mdata
}




#Evaluate nrows.transmit

nrows.text<-strsplit(nrows.transmit, split=",")

nrows.c<-eval(parse(text=nrows.text))

nrows<-as.numeric(nrows.c)


#Evaluate ncols.transmit

ncols.text<-strsplit(ncols.transmit, split=",")

ncols.c<-eval(parse(text=ncols.text))

ncols<-as.numeric(ncols.c)

#convert 2 matrix
serverside.matrix<-matrix(serverside.vector,nrow=nrows,ncol=ncols)

#convert columns to correct class

colclass.vector<-unlist(strsplit(colclass.transmit, split=","))
colnames.vector<-unlist(strsplit(colnames.transmit, split=","))


serverside.df<-data.frame(serverside.matrix)
#serverside.matrix.final<-serverside.matrix

for(m in 1:ncols)
{
activate.text<-paste0("as.",colclass.vector[m],"(as.character(serverside.df[,",m,"]))")
serverside.df[,m]<-eval(parse(text=activate.text))
}

colnames(serverside.df)<-colnames.vector

#outlist<-list(serverside.vector=serverside.vector,serverside.df=serverside.df,
#              serverside.matrix.final=serverside.matrix.final,nrows=nrows,ncols=ncols,
#			  colclass.vector=colclass.vector,activate.text=activate.text)
#outlist<-list(serverside.df=serverside.df,nrows=nrows,ncols=ncols,
#			  colclass.vector=colclass.vector,colnames.vector=colnames.vector,activate.text=activate.text)

return(serverside.df)
}
#assign function
# DANGERc2sMATDFDS


