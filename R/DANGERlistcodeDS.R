#' @title lists the code for a function
#' @description list the code for a named fucntion in a named package
#' @details Serverside aggregate function {DANGERsearchDS} called by clientside function
#' @param package.name a vector of character containing a package name
#' @param function.name a vector of character containing a function name
#' @return a vector of character containing the code for the function, or a stop error message
#' @author Stuart Wheater, DataSHIELD Team.
#' @export

DANGERlistcodeDS <- function(package.name = NULL, function.name = NULL)
{
    # Check value of package.name
    if (is.null(package.name))
        stop('Error: Parameter "package.name" is NULL', call.=FALSE);

    if (!('character' %in% class(package.name)))
        stop('Error: Parameter "package.name" is not a character vector', call.=FALSE);

    # Check value of function.name
    if (is.null(function.name))
        stop('Error: Parameter "function.name" is NULL', call.=FALSE);

    if (!('character' %in% class(function.name)))
        stop('Error: Parameter "function.name" is not a character vector', call.=FALSE);

    stop(paste0(package.name, '|', function.name, '|', search()))

    # Obtain and check package's environment
    packageEnvir <- NULL;
    try(packageEnvir <- as.environment(paste0('package:', package.name)), silent = TRUE);

    if (is.null(packageEnvir))
        stop('Error: Parameter "parameter.name" does not correspond to package', call.=FALSE);

    # Obtain and check function object
    func <- NULL;
    try(func <- get(function.name, packageEnvir), silent = TRUE);

    stop(paste0(package.name, '|', function.name, '|', class(func), '|', is.function(func), '|', deparse(func)))

    if (is.null(func) || (! ('function' %in% class(func))))
        stop('Error: Unable to obtain function', call.=FALSE);

    return(deparse(func));
}

#AGGREGATE FUNCTION
# DANGERlistcodeDS
