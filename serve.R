#!/usr/bin/env Rscript
generator <- rmarkdown::site_generator()
servr::httw(".", site.dir = "docs")
