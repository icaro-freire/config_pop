
# instalar o R ================================================================

## lista de pacotes para instalação -------------------------------------------

PACOTES_CRAN=(
  '"remotes"'
  '"tidyverse"'
  '"tidymodels"'
  '"ggforce"'
  '"xaringan"'
  '"xaringanthemer"'
  '"prettydoc"'
  '"DT"'
  '"plotly"'
  '"viridis"'
  '"janitor"'
  '"flexdashboard"'
  '"usethis"'
  '"learnr"'
  '"bookdown"'
  '"distill"'
  '"pagedown"'
  '"fs"'
)

## função para instalação -----------------------------------------------------

instalar_R () {
  # instalar lsb-release
  sudo apt update -qq 
  sudo apt -y install lsb-release
  # adicionando chave GPG
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
  # adicionando CRAN
  sudo echo "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/" | sudo tee -a /etc/apt/sources.list
  # instalando o R 
  sudo apt update -qq
  sudo apt install r-base
  # instalando o java 
  sudo apt install -y default-jre
  sudo apt install -y default-jdk
  # setando o caminho para o java 
  sudo R CMD javareconf
  # instalando o rJava 
  Rscript -e 'install.packages("rJava", dependencies=TRUE)'
  # instalando dependências para o tidyverse 
  sudo apt install libssl-dev -y
  sudo apt install libcurl4-openssl-dev -y
  sudo apt install libxml2-dev -y
  # instalando pacotes do CRAN (vai demorar)
  for programas_cran in "${PACOTES_CRAN[@]}"
  do 
    Rscript -e "install.packages($programas_cran, dependencies=TRUE)"
  done
}

instalar_R
