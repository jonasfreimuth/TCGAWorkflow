(define-module (packages)
  #:use-module (gnu)
  #:use-module (guix)
  #:use-module (guix git-download)
  #:use-module (guix hg-download)
  #:use-module (guix build-system r)
  #:use-module (guix licenses))

(define-public r-reactr
  (package
    (name "r-reactr")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "reactR" version))
              (sha256
               (base32
                "15c0ij3xglsdavkpzgnkbyl5yb39jrn6zhlrdjiwp1m9cnrqzf2w"))))
    (properties `((upstream-name . "reactR")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-htmltools")))
    (native-inputs (list (specification->package "esbuild")
                         (specification->package "r-knitr")))
    (home-page "https://github.com/react-R/reactR")
    (synopsis "React Helpers")
    (description
     "Make it easy to use React in R with htmlwidget scaffolds, helper dependency
functions, an embedded Babel transpiler', and examples.")
    (license expat)))

(define-public r-reactable
  (package
    (name "r-reactable")
    (version "0.4.4")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "reactable" version))
              (sha256
               (base32
                "1wkamzyyl3k3772n5g4rjklkkhdb07jiax064r9alnnq5nzfdaml"))))
    (properties `((upstream-name . "reactable")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-digest")
                             (specification->package "r-htmltools")
                             (specification->package "r-htmlwidgets")
                             (specification->package "r-jsonlite")
                             (specification->package "r-reactr")))
    (home-page "https://glin.github.io/reactable/")
    (synopsis "Interactive Data Tables for R")
    (description
     "Interactive data tables for R, based on the React Table JavaScript library.
Provides an HTML widget that can be used in R Markdown or Quarto documents,
Shiny applications, or viewed from an R console.")
    (license expat)))

(define-public r-juicyjuice
  (package
    (name "r-juicyjuice")
    (version "0.1.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "juicyjuice" version))
              (sha256
               (base32
                "0ap1nsyihlagc1yqvwr2x9s16kzb3c8azfi50mzv95275a5l3xb4"))))
    (properties `((upstream-name . "juicyjuice")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-v8")))
    (home-page "https://github.com/rich-iannone/juicyjuice")
    (synopsis "Inline CSS Properties into HTML Tags Using 'juice'")
    (description
     "There are occasions where you need a piece of HTML with integrated styles.  A
prime example of this is HTML email.  This transformation involves moving the
CSS and associated formatting instructions from the style block in the head of
your document into the body of the HTML. Many prominent email clients require
integrated styles in HTML email; otherwise a received HTML email will be
displayed without any styling.  This package will quickly and precisely perform
these CSS transformations when given HTML text and it does so by using the
JavaScript juice library.")
    (license expat)))

(define-public r-bigd
  (package
    (name "r-bigd")
    (version "0.2.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "bigD" version))
              (sha256
               (base32
                "0pzzqqazn1nv2b613vzdyhxvr454lyqq8235jydia6r3k86fpadw"))))
    (properties `((upstream-name . "bigD")))
    (build-system r-build-system)
    (home-page "https://github.com/rich-iannone/bigD")
    (synopsis "Flexibly Format Dates and Times to a Given Locale")
    (description
     "Format dates and times flexibly and to whichever locales make sense.  Parses
dates, times, and date-times in various formats (including string-based ISO 8601
constructions).  The formatting syntax gives the user many options for
formatting the date and time output in a precise manner.  Time zones in the
input can be expressed in multiple ways and there are many options for
formatting time zones in the output as well.  Several of the provided helper
functions allow for automatic generation of locale-aware formatting patterns
based on date/time skeleton formats and standardized date/time formats with
varying specificity.")
    (license expat)))

(define-public r-gt
  (package
    (name "r-gt")
    (version "0.9.0")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "gt" version))
              (sha256
               (base32
                "0l60f38r7wnd2dh4c5il9axabxzqd0zdzlhkp1cibdp14zi7xr9y"))))
    (properties `((upstream-name . "gt")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-base64enc")
                             (specification->package "r-bigd")
                             (specification->package "r-bitops")
                             (specification->package "r-cli")
                             (specification->package "r-commonmark")
                             (specification->package "r-dplyr")
                             (specification->package "r-fs")
                             (specification->package "r-glue")
                             (specification->package "r-htmltools")
                             (specification->package "r-htmlwidgets")
                             (specification->package "r-juicyjuice")
                             (specification->package "r-magrittr")
                             (specification->package "r-markdown")
                             (specification->package "r-reactable")
                             (specification->package "r-rlang")
                             (specification->package "r-sass")
                             (specification->package "r-scales")
                             (specification->package "r-tibble")
                             (specification->package "r-tidyselect")
                             (specification->package "r-xml2")))
    (home-page "https://gt.rstudio.com/")
    (synopsis "Easily Create Presentation-Ready Display Tables")
    (description
     "Build display tables from tabular data with an easy-to-use set of functions.
With its progressive approach, we can construct display tables with a cohesive
set of table parts.  Table values can be formatted using any of the included
formatting functions.  Footnotes and cell styles can be precisely added through
a location targeting system.  The way in which gt handles things for you means
that you don't often have to worry about the fine details.")
    (license expat)))

(define-public r-tcgaworkflowdata
  (package
    (name "r-tcgaworkflowdata")
    (version "1.24.0")
    (source (origin
              (method url-fetch)
              (uri (bioconductor-uri "TCGAWorkflowData" version
                                     'experiment))
              (sha256
               (base32
                "1846ss0rjm24qgl6lm6g7jmviap6gl5zcf3cskz5dj6i70afcpbm"))))
    (properties `((upstream-name . "TCGAWorkflowData")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-summarizedexperiment")))
    (native-inputs (list (specification->package "r-knitr")))
    (home-page "https://f1000research.com/articles/5-1542/v2")
    (synopsis "Data for TCGA Workflow")
    (description
     "This experimental data package contains 11 data sets necessary to follow the
\"TCGA Workflow: Analyze cancer genomics and epigenomics data using Bioconductor
packages\".")
    (license gpl3)))

(define-public r-genomicdatacommons
  (package
    (name "r-genomicdatacommons")
    (version "1.24.0")
    (source (origin
              (method url-fetch)
              (uri (bioconductor-uri "GenomicDataCommons" version))
              (sha256
               (base32
                "1c9fw33jkx5nnr24a61xq8qw05hpslnm548qqf6qar1gs27ja8d0"))))
    (properties `((upstream-name . "GenomicDataCommons")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-dplyr")
                             (specification->package "r-genomicranges")
                             (specification->package "r-httr")
                             (specification->package "r-iranges")
                             (specification->package "r-jsonlite")
                             (specification->package "r-magrittr")
                             (specification->package "r-rappdirs")
                             (specification->package "r-readr")
                             (specification->package "r-rlang")
                             (specification->package "r-tibble")
                             (specification->package "r-xml2")))
    (native-inputs (list (specification->package "r-knitr")))
    (home-page "https://bioconductor.org/packages/GenomicDataCommons")
    (synopsis "NIH / NCI Genomic Data Commons Access")
    (description
     "Programmatically access the NIH / NCI Genomic Data Commons RESTful service.")
    (license artistic2.0)))

(define-public r-tcgautils
  (package
    (name "r-tcgautils")
    (version "1.20.0")
    (source (origin
              (method url-fetch)
              (uri (bioconductor-uri "TCGAutils" version))
              (sha256
               (base32
                "0wp5v0p3gcjdcpvy8p3ang4adq8nhpxqfdas2qbm0lna53130j0x"))))
    (properties `((upstream-name . "TCGAutils")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-annotationdbi")
                             (specification->package "r-biocgenerics")
                             (specification->package "r-genomeinfodb")
                             (specification->package "r-genomicdatacommons")
                             (specification->package "r-genomicfeatures")
                             (specification->package "r-genomicranges")
                             (specification->package "r-iranges")
                             (specification->package "r-multiassayexperiment")
                             (specification->package "r-raggedexperiment")
                             (specification->package "r-rvest")
                             (specification->package "r-s4vectors")
                             (specification->package "r-stringr")
                             (specification->package "r-summarizedexperiment")
                             (specification->package "r-xml2")))
    (native-inputs (list (specification->package "r-knitr")))
    (home-page "https://bioconductor.org/packages/TCGAutils")
    (synopsis "TCGA utility functions for data management")
    (description
     "This package provides a suite of helper functions for checking and manipulating
TCGA data including data obtained from the curatedTCGAData experiment package.
These functions aim to simplify and make working with TCGA data more manageable.
 Exported functions include those that import data from flat files into
Bioconductor objects, convert row annotations, and identifier translation via
the GDC API.")
    (license artistic2.0)))

(define-public r-raggedexperiment
  (package
    (name "r-raggedexperiment")
    (version "1.24.0")
    (source (origin
              (method url-fetch)
              (uri (bioconductor-uri "RaggedExperiment" version))
              (sha256
               (base32
                "1xs7dz5mkh9zs078g2a0izij8vxrwhzh7gyjglp057gicsca0hal"))))
    (properties `((upstream-name . "RaggedExperiment")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-biocgenerics")
                             (specification->package "r-genomeinfodb")
                             (specification->package "r-genomicranges")
                             (specification->package "r-iranges")
                             (specification->package "r-matrix")
                             (specification->package "r-matrixgenerics")
                             (specification->package "r-s4vectors")
                             (specification->package "r-summarizedexperiment")))
    (native-inputs (list (specification->package "r-knitr")))
    (home-page "https://bioconductor.org/packages/RaggedExperiment")
    (synopsis "Representation of Sparse Experiments and Assays Across Samples")
    (description
     "This package provides a flexible representation of copy number, mutation, and
other data that fit into the ragged array schema for genomic location data.  The
basic representation of such data provides a rectangular flat table interface to
the user with range information in the rows and samples/specimen in the columns.
 The RaggedExperiment class derives from a GRangesList representation and
provides a semblance of a rectangular dataset.")
    (license artistic2.0)))

(define-public r-rtcgatoolbox
  (package
    (name "r-rtcgatoolbox")
    (version "2.30.0")
    (source (origin
              (method url-fetch)
              (uri (bioconductor-uri "RTCGAToolbox" version))
              (sha256
               (base32
                "03p5rgjzc1265q60jkvk92vhcib5wdnv6bz997r70q9c39y03wm5"))))
    (properties `((upstream-name . "RTCGAToolbox")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-biocgenerics")
                             (specification->package "r-data-table")
                             (specification->package "r-delayedarray")
                             (specification->package "r-genomeinfodb")
                             (specification->package "r-genomicranges")
                             (specification->package "r-httr")
                             (specification->package "r-raggedexperiment")
                             (specification->package "r-rcircos")
                             (specification->package "r-rcurl")
                             (specification->package "r-rjsonio")
                             (specification->package "r-rvest")
                             (specification->package "r-s4vectors")
                             (specification->package "r-stringr")
                             (specification->package "r-summarizedexperiment")
                             (specification->package "r-tcgautils")))
    (native-inputs (list (specification->package "r-knitr")))
    (home-page "http://mksamur.github.io/RTCGAToolbox/")
    (synopsis "new tool for exporting TCGA Firehose data")
    (description
     "Managing data from large scale projects such as The Cancer Genome Atlas (TCGA)
for further analysis is an important and time consuming step for research
projects.  Several efforts, such as Firehose project, make TCGA pre-processed
data publicly available via web services and data portals but it requires
managing, downloading and preparing the data for following steps.  We developed
an open source and extensible R based data client for Firehose pre-processed
data and demonstrated its use with sample case studies.  Results showed that
RTCGAToolbox could improve data management for researchers who are interested
with TCGA data.  In addition, it can be integrated with other analysis pipelines
for following data analysis.")
    (license gpl2)))

(define-public r-c3net
  (package
    (name "r-c3net")
    (version "1.1.1.1")
    (source (origin
              (method url-fetch)
              (uri (cran-uri "c3net" version))
              (sha256
               (base32
                "0xhl6spii8kwyqdc86wbp6zn1727xq7xnscx4ld0a6hgbra348pf"))))
    (properties `((upstream-name . "c3net")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-igraph")))
    (home-page "https://cran.r-project.org/package=c3net")
    (synopsis "Inferring Large-Scale Gene Networks with C3NET")
    (description
     "Allows inferring gene regulatory networks with direct physical interactions from
microarray expression data using C3NET.")
    (license gpl3+)))

(define-public r-elmer-data
  (package
    (name "r-elmer-data")
    (version "2.24.0")
    (source (origin
              (method url-fetch)
              (uri (bioconductor-uri "ELMER.data" version
                                     'experiment))
              (sha256
               (base32
                "08kaz2mzmp1flkmml11kr9pi9520qkf3hbcj4s1dnk58895rhbkc"))))
    (properties `((upstream-name . "ELMER.data")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-genomicranges")))
    (native-inputs (list (specification->package "r-knitr")))
    (home-page "https://bioconductor.org/packages/ELMER.data")
    (synopsis "Data for the ELMER package")
    (description
     "Supporting data for the ELMER package.  It includes: -
elmer.data.example.promoter: mae.promoter - elmer.data.example: data -
EPIC.hg38.manifest - EPIC.hg19.manifest - hm450.hg38.manifest -
hm450.hg19.manifest - hocomoco.table - human.TF - LUSC_meth_refined: Meth -
LUSC_RNA_refined: GeneExp - Probes.motif.hg19.450K - Probes.motif.hg19.EPIC -
Probes.motif.hg38.450K - Probes.motif.hg38.EPIC - TF.family - TF.subfamily -
Human_genes__GRCh37_p13 - Human_genes__GRCh38_p12 - Human_genes__GRCh37_p13__tss
- Human_genes__GRCh38_p12__tss")
    (license gpl3)))

(define-public r-elmer
  (package
    (name "r-elmer")
    (version "2.24.1")
    (source (origin
              (method url-fetch)
              (uri (bioconductor-uri "ELMER" version))
              (sha256
               (base32
                "1dk0glasd5rrilbbdf7nql7yn8n8gp7cvhbbl51949v71qndxpn9"))))
    (properties `((upstream-name . "ELMER")))
    (build-system r-build-system)
    (propagated-inputs (list (specification->package "r-biomart")
                             (specification->package "r-circlize")
                             (specification->package "r-complexheatmap")
                             (specification->package "r-delayedarray")
                             (specification->package "r-doparallel")
                             (specification->package "r-downloader")
                             (specification->package "r-dplyr")
                             (specification->package "r-elmer-data")
                             (specification->package "r-genomeinfodb")
                             (specification->package "r-genomicfeatures")
                             (specification->package "r-genomicranges")
                             (specification->package "r-ggplot2")
                             (specification->package "r-ggpubr")
                             (specification->package "r-ggrepel")
                             (specification->package "r-gridextra")
                             (specification->package "r-gviz")
                             (specification->package "r-iranges")
                             (specification->package "r-lattice")
                             (specification->package "r-magrittr")
                             (specification->package "r-matrix")
                             (specification->package "r-multiassayexperiment")
                             (specification->package "r-plotly")
                             (specification->package "r-plyr")
                             (specification->package "r-progress")
                             (specification->package "r-purrr")
                             (specification->package "r-readr")
                             (specification->package "r-reshape")
                             (specification->package "r-reshape2")
                             (specification->package "r-rmarkdown")
                             (specification->package "r-rtracklayer")
                             (specification->package "r-rvest")
                             (specification->package "r-s4vectors")
                             (specification->package "r-scales")
                             (specification->package "r-stringr")
                             (specification->package "r-summarizedexperiment")
                             (specification->package "r-tcgabiolinks")
                             (specification->package "r-tibble")
                             (specification->package "r-tidyr")
                             (specification->package "r-xml2")))
    (native-inputs (list (specification->package "r-knitr")))
    (home-page "https://bioconductor.org/packages/ELMER")
    (synopsis
     "Inferring Regulatory Element Landscapes and Transcription Factor Networks Using Cancer Methylomes")
    (description
     "ELMER is designed to use DNA methylation and gene expression from a large number
of samples to infere regulatory element landscape and transcription factor
network in primary tissue.")
    (license gpl3)))

(define-public r-tcgaworkflow
  (let ((commit "f136748a01c370564ae62bee7e374b0484e38677")
        (revision "1"))
    (package
      (name "r-tcgaworkflow")
      (version (git-version "1.23.2" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url
                       "https://github.com/BioinformaticsFMRP/TCGAWorkflow")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "0zkzij51yaamzrz7xz48cvf8ww7a0a5dahhvq7f494ldlflysiij"))))
      (properties `((upstream-name . "TCGAWorkflow")))
      (build-system r-build-system)
      (propagated-inputs (list (specification->package "r-annotationhub")
                               (specification->package "r-biomart")
                               (specification->package
                                "r-bsgenome-hsapiens-ucsc-hg19")
                               (specification->package "r-c3net")
                               (specification->package "r-chipseeker")
                               (specification->package "r-circlize")
                               (specification->package "r-clusterprofiler")
                               (specification->package "r-complexheatmap")
                               (specification->package "r-downloader")
                               (specification->package "r-dt")
                               (specification->package "r-elmer")
                               (specification->package "r-genomeinfodb")
                               (specification->package "r-genomicranges")
                               (specification->package "r-ggplot2")
                               (specification->package "r-ggpubr")
                               (specification->package "r-ggthemes")
                               (specification->package "r-gt")
                               (specification->package "r-knitr")
                               (specification->package "r-maftools")
                               (specification->package "r-minet")
                               (specification->package "r-motifstack")
                               (specification->package "r-pander")
                               (specification->package "r-pathview")
                               (specification->package "r-pbapply")
                               (specification->package "r-rgadem")
                               (specification->package "r-rmarkdown")
                               (specification->package "r-rtcgatoolbox")
                               (specification->package
                                "r-summarizedexperiment")
                               (specification->package "r-tcgabiolinks")
                               (specification->package "r-tcgaworkflowdata")))
      (native-inputs (list (specification->package "r-knitr")))
      (home-page "https://github.com/BioinformaticsFMRP/TCGAWorkflow")
      (synopsis
       "TCGA Workflow Analyze cancer genomics and epigenomics data using Bioconductor packages")
      (description
       "Biotechnological advances in sequencing have led to an explosion of publicly
available data via large international consortia such as The Cancer Genome Atlas
(TCGA), The Encyclopedia of DNA Elements (ENCODE), and The NIH Roadmap
Epigenomics Mapping Consortium (Roadmap).  These projects have provided
unprecedented opportunities to interrogate the epigenome of cultured cancer cell
lines as well as normal and tumor tissues with high genomic resolution.  The
Bioconductor project offers more than 1,000 open-source software and statistical
packages to analyze high-throughput genomic data.  However, most packages are
designed for specific data types (e.g. expression, epigenetics, genomics) and
there is no one comprehensive tool that provides a complete integrative analysis
of the resources and data provided by all three public projects.  A need to
create an integration of these different analyses was recently proposed.  In
this workflow, we provide a series of biologically focused integrative analyses
of different molecular data.  We describe how to download, process and prepare
TCGA data and by harnessing several key Bioconductor packages, we describe how
to extract biologically meaningful genomic and epigenomic data.  Using Roadmap
and ENCODE data, we provide a work plan to identify biologically relevant
functional epigenomic elements associated with cancer.  To illustrate our
workflow, we analyzed two types of brain tumors: low-grade glioma (LGG) versus
high-grade glioma (glioblastoma multiform or GBM).")
      (license artistic2.0))))

(define-public r-r-matlab
  (let ((commit "444d7bfbb04b4200d78eca1f23bb08894b2d1b63")
        (revision "1"))
    (package
      (name "r-r-matlab")
      (version (git-version "3.7.0-9000" revision commit))
      (source (origin
                (method git-fetch)
                (uri (git-reference
                      (url "https://github.com/HenrikBengtsson/R.matlab")
                      (commit commit)))
                (file-name (git-file-name name version))
                (sha256
                 (base32
                  "0lx7rki4w3wmr0zzxpcgxz7x84gzr560b90vfcy91hdq1k221h99"))))
      (properties `((upstream-name . "R.matlab")))
      (build-system r-build-system)
      (propagated-inputs (list (specification->package "r-r-methodss3")
                               (specification->package "r-r-oo")
                               (specification->package "r-r-utils")))
      (home-page "https://github.com/HenrikBengtsson/R.matlab")
      (synopsis "Read and Write MAT Files and Call MATLAB from Within R")
      (description
       "This package provides methods readMat() and writeMat() for reading and writing
MAT files.  For user with MATLAB v6 or newer installed (either locally or on a
remote host), the package also provides methods for controlling MATLAB
(trademark) via R and sending and retrieving data between R and MATLAB.")
      (license lgpl2.1+))))