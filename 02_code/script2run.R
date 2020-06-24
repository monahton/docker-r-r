## Rscript intended to run when container starts

## render the document from Rmarkdown
rmarkdown::render("r-studio/Gapminder_example/01_data/Gapminder_example.Rmd", output_dir = "/03_output")