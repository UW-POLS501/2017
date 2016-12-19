#!/usr/bin/env Rmarkdown

serve_site <- function(dir = ".",
                       preview = TRUE,
                       in_session = TRUE,
                       daemon = FALSE, ...) {
  owd = setwd(dir)
  on.exit(setwd(owd), add = TRUE)
  site_ <- site_generator(dir)
  output_dir <- site_[["output_dir"]]

  rebuild = function(..., preview_ = preview) {
    files = grep("[.]R?md$", c(...), value = TRUE, ignore.case = TRUE)
    i = match(tools::sans_ext(book_filename()),
              tools::sans_ext(basename(files)))
    if (!is.na(i))
      files = files[-i]
    i = grep("[.](knit|utf8)[.]md$", files)
    if (length(i))
      files = files[-i]
    if (length(files) == 0)
      return()
    if (!dir_exists(output_dir))
      preview_ = FALSE
    if (in_session)
      render_book(files, output_format, output_dir = output_dir,
                  preview = preview_, envir = globalenv())
    else {
      args = shQuote(c(bookdown_file("scripts", "servr.R"),
                       output_format, output_dir, preview_, files))
      if (Rscript(args) != 0)
        stop("Failed to compile ", paste(files, collapse = " "))
    }
  }
  rebuild("index.Rmd", preview_ = FALSE)
  servr::httw(".", ..., site.dir = output_dir, handler = rebuild,
              daemon = daemon)
}
