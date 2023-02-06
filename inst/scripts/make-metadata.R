url = "https://atlas.fredhutch.org/data/nygc/multimodal/pbmc_multimodal.h5seurat"
md5sum = "82421ea2c16fe30fba15559efbcf9094"
species = "Homo sapiens"

d <- data.frame(
	Title = c("CITEVizTestDataSeurat", "CITEVizTestDataSCE"),
	Description = c("PBMC CITE-Seq data in Seurat format with 2500 cells", "PBMC CITE-Seq data in SingleCellExperiment format with 2500 cells"),
	BiocVersion = rep("3.17", 2),
	Genome = rep("GRCh38", 2),
	SourceType = rep("HDF5", 2),
	SourceUrl = rep(url, 2),
	SourceVersion = rep(md5sum, 2),
	Species = rep(species, 2),
	TaxonomyId = rep(9606, 2),
	Coordinate_1_based = rep(TRUE, 2),
	DataProvider = rep("Satija Lab", 2),
	Maintainer = rep("Garth Kong kongga2017@gmail.com", 2),
	RDataClass = c("Seurat", "SingleCellExperiment"),
	DispatchClass = rep("Rds", 2),
	stringsAsFactors = FALSE,
	RDataPath = c("CITEVizTestData/pbmc-cite-seq-2500-seurat.rds", "CITEVizTestData/pbmc-cite-seq-2500-sce.rds")
)

write.csv(d, "inst/extdata/metadata.csv", row.names = FALSE)