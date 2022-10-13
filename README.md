# CITEVizTestData

`CITEVizTestData` is an ExperimentHub package that contains two CITE-Seq datasets from peripheral bone mononuclear cells (PBMC). Each of the datasets are identical, but formatted as a Seurat or SingleCellExperiment object. Each object contains 2500 cells and 228 antibodies, and is a down-sampled version of the data by [Hao et. al. 2021](https://www.sciencedirect.com/science/article/pii/S0092867421005833?via%3Dihub) under the [Creative Commons BY 4.0](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&cad=rja&uact=8&ved=2ahUKEwjOjeLamN76AhWpATQIHQZhDPgQFnoECBEQAQ&url=https%3A%2F%2Fcreativecommons.org%2Flicenses%2Fby%2F4.0%2F&usg=AOvVaw28E0YDTT_NxJYfRVmipfeb) license. Users can have the choice to download the data in either format and export it as an RDS file for use with CITEViz. For more information about CITEViz, please click [here](https://github.com/maxsonBraunLab/CITEViz).

# How to download the data from ExperimentHub

While there are multiple ways to download data from ExperimentHub (more info in the `CITEVizTestData` vignette), below is one such example:

```R
library(ExperimentHub)

# create EH instance and query it
eh <- ExperimentHub()
cv <- query(eh, "CITEVizTestData")

# get PBMC CITE-Seq datasets in two formats
file_1 <- cv[[1]] # Test data in Seurat format
file_2 <- cv[[2]] # Test data in SingleCellExperiment format

```

The next step is to export the data to an RDS file, which can be uploaded to [CITEViz]((https://github.com/maxsonBraunLab/CITEViz) via the upload button in the GUI.

```R
# export information to external file
saveRDS(file_1, "CITEVizTestData_Seurat.rds")
saveRDS(file_2, "CITEVizTestData_SingleCellExperiment.rds")

```
