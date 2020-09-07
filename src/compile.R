#Instalação do pacote renv
# if (!require("renv")) {
#   if (!require("remotes"))
#     install.packages("remotes")
#   remotes::install_github("rstudio/renv")
# }

# Restaura o ambiente criado
#renv::restore(lockfile = "./renv.lock")

library(reticulate)
reticulate::use_python(Sys.which("python")[[1]])

# Compila o material
bookdown::render_book("index.Rmd", bookdown::gitbook(lib_dir = "libs"))
