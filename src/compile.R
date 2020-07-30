#Instalação do pacote renv
if (!requireNamespace("remotes"))
  install.packages("remotes")
remotes::install_github("rstudio/renv")

# inicializa um novo ambiente
renv::init()

# Restaura o ambiente criado
renv::restore(lockfile = "./renv.lock")

# Compila o material
bookdown::render_book("index.Rmd", bookdown::gitbook(lib_dir = "libs"))