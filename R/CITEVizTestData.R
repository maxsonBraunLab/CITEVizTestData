#' @title Download a PBMC CITE-Seq data for CITEViz in 
#' Seurat/SingleCellExperiment format using ExperimentHub
#' 
#' @description This function helps download a CITE-Seq dataset from 
#' Hao. et. al. 2021 for use with CITEViz. The dataset contains 
#' 2500 cells and 228 antibodies.
#'
#' @param format Either "Seurat" or "SingleCellExperiment"
#' @return A Seurat [default] or SingleCellExperiment object.
#' @examples
#' library(CITEVizTestData)
#' library(Seurat)
#' file_seurat <- CITEVizTestData(format = "Seurat")
#' file_sce <- CITEVizTestData(format = "SingleCellExperiment")
#' 
#' 
#' @importFrom ExperimentHub ExperimentHub
#' @importFrom AnnotationHub query
#' 
#' @export
CITEVizTestData <- function(format = "Seurat") {
  
  all_datasets <- c("CITEVizTestDataSeurat",
                    "CITEVizTestDataSingleCellExperiment")
  all_formats <- c("Seurat", "SingleCellExperiment")
  
  if (format %in% all_formats) {
  
    eh <- ExperimentHub::ExperimentHub()
    pkgname <- "CITEVizTestData"
    q <- AnnotationHub::query(eh, pkgname)
    
    if (format == "Seurat") {
      out <- q[["EH7739"]]
    }

    if (format == "SingleCellExperiment") {
      out <- q[["EH7740"]]
    }
  
  return(out)
    
  } else {
    
    message("Input format argument could not be found.")
    stop("Available formats: ['Seurat', 'SingleCellExperiment']")
  
  }
}

