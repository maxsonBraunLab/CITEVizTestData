#' CITEVizTestData: Example CITE-Seq datasets for CITEViz
#'
#' \code{CITEVizTestData} is an ExperimentHub package containing 
#' data for use with CITEViz. CITEViz is an RShiny app that allows users to 
#' classify cell types in CITE-Seq data via cellular surface protein levels. 
#' Similar to flow cytometry, users can physically draw gates and filter on a
#' mixture of cells, and the selected cells are immediately highlighted in
#' dimensional reduction space (e.g. UMAP, tSNE, PCA). This workflow provides
#' rapid feedback to the users to help classify cell types. To read more about
#' CITEViz, click (here. \url{https://github.com/maxsonBraunLab/CITEViz})
#' 
#' The input of CITEViz is a pre-processed Seurat/SingleCelExperiment object
#' with assays containing normalized RNA/SCT (single-cell transform)
#' and ADT (antibody-derived tag) count data, as well as data for at least
#' one dimensional reduction (e.g. UMAP, PCA, etc.). The CITEVizTestData 
#' package allows users to quickly download an example dataset for the CITEViz
#' tutorial.
#' 
#' The available datasets are CITE-Seq assays of human peripheral bone and
#' mononuclear cells with 2500 cells and 228 antibodies from
#' (Hao et. al. 2021, \url{https://linkinghub.elsevier.com/retrieve/pii/S0092-8674(21)00583-3})
#' made available through the (Creative Commons BY 4.0, \url{https://creativecommons.org/licenses/by/4.0/})
#' license.
#' @author Garth Kong \email{kongga2017@gmail.com}
#' @name CITEVizTestData-pkg
#' @docType package
NULL