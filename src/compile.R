#Instalação do pacote renv
if (!require("renv")) {
  if (!require("remotes"))
    install.packages("remotes")
  remotes::install_github("rstudio/renv")
}

# Restaura o ambiente criado
renv::restore(lockfile = "./renv.lock")

# Compila o material
bookdown::render_book("index.Rmd", bookdown::gitbook(lib_dir = "libs"))
