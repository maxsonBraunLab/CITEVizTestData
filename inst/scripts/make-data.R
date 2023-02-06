library(Seurat)
library(SeuratDisk)
library(SingleCellExperiment)

# define the data
url="https://atlas.fredhutch.org/data/nygc/multimodal/pbmc_multimodal.h5seurat"
filename="pbmc_multimodal.h5seurat"

# download the file
utils::download.file(url, destfile = filename, method = "curl")

# import and down-sample
pbmc = SeuratDisk::LoadH5Seurat(filename) # this is only recommended for computers with > 16GB RAM

# get cell barcodes
barcodes = rownames(pbmc@meta.data)

# random sample cell barcodes
set.seed(1)
sampled_barcodes = sample(barcodes, 2500)

# subset pbmc data
small_pbmc = subset(pbmc, cells = sampled_barcodes)

# export as Seurat object
saveRDS(small_pbmc, "pbmc-cite-seq-2500-seurat.rds")

# export as SCE object
small_pbmc_sce = as.SingleCellExperiment(pbmc)
saveRDS(small_pbmc, "pbmc-cite-seq-2500-sce.rds")