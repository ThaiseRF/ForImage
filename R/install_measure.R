#' Install python packages dependencies for measure function
#'
#' @description
#' The function is a wrapper to install all python packages dependencies for \code{measure} function at once.
#' It will install the following packages:
#' \code{numpy}, \code{scipy}, \code{imutils}, \code{Pillow}, \code{pandas},
#' and \code{opencv-python}.
#' If the latest versions of these packages are already installed, there is no need to run this function.
#'
#' @usage
#' install_measure()
#'
#' @param method Installation method. By default, "auto" automatically finds a
#'   method that will work in the local environment. Change the default to force
#'   a specific installation method. Note that the "virtualenv" method is not
#'   available on Windows.
#'
#' @param conda Path to conda executable (or "auto" to find conda using the PATH and other conventional install locations).
#' @param pip Install from pip, if possible.
#' @param envname Name of environment to install packages into.
#' @param extra_packages Additional packages
#'
#' @details On Linux and OS X the "virtualenv" method will be used by default
#' ("conda" will be used if virtualenv isn't available). On Windows,
#' the "conda" method is always used. For more information check the `reticulate` package documentation:
#' https://rstudio.github.io/reticulate/
#'
#' @inheritParams reticulate::conda_list
#' @export

install_measure <- function(method = "auto", conda = "auto", envname = NULL,
                            extra_packages = NULL, pip = F,
                            ...) {



    pack = c(
        #"openssl",
        "numpy",
        "scipy",
        "imutils",
        "Pillow",
        "pandas",
        "opencv"
        )

    packages = c(pack, extra_packages)


    reticulate::py_install(
        packages       = packages,
        envname        = envname,
        method         = method,
        conda          = conda,
        pip            = pip,
        ...
    )

    cat("\n Installation complete. Please restart R.\n\n")

}
