
# instalar o R =============================================================

## lista de pacotes para instalação ----------------------------------------

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

## função para instalação --------------------------------------------------

instalar_R () {
  echo 
  echo "##### Ininicando a instalação do R ============================================="
  echo 
  #-------------------------------------------------------------------------
  cd "$TMP_INSTALACAO" || { echo "Erro na construção do diretório"; exit 1; }
  #-------------------------------------------------------------------------
  echo " # instalando lsb-release..."
  echo 
  #-------------------------------------------------------------------------
  sudo apt update -qq 
  sudo apt -y install lsb-release
  #-------------------------------------------------------------------------
  echo
  echo " # adicionando chave GPG..."
  echo
  #-------------------------------------------------------------------------
  sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
  #-------------------------------------------------------------------------
  echo 
  echo " # adicionando repositório do CRAN..."
  echo 
  #-------------------------------------------------------------------------
  sudo echo "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/" | sudo tee -a /etc/apt/sources.list
  #-------------------------------------------------------------------------
  echo " # instalando o R... "
  echo 
  #-------------------------------------------------------------------------
  sudo apt update -qq
  sudo apt install r-base
  #-------------------------------------------------------------------------
  echo 
  echo " # instalando o Java..."
  echo 
  #-------------------------------------------------------------------------
  sudo apt install -y default-jre
  sudo apt install -y default-jdk
  #-------------------------------------------------------------------------
  echo 
  echo " # setando o caminho para o java... "
  echo 
  #-------------------------------------------------------------------------
  sudo R CMD javareconf
  #-------------------------------------------------------------------------
  echo 
  echo " # instalando o rJava..."
  echo 
  #-------------------------------------------------------------------------
  Rscript -e 'install.packages("rJava", dependencies=TRUE)'
  #-------------------------------------------------------------------------
  echo 
  echo " # instalando dependências para o tidyverse... "
  echo 
  #-------------------------------------------------------------------------
  sudo apt install libssl-dev -y
  sudo apt install libcurl4-openssl-dev -y
  sudo apt install libxml2-dev -y
  #-------------------------------------------------------------------------
  echo 
  echo " # instalando pacotes do CRAN (vai demorar)..."
  echo
  #-------------------------------------------------------------------------
  for programas_cran in "${PACOTES_CRAN[@]}"
  do 
    Rscript -e "install.packages($programas_cran, dependencies=TRUE)"
  done
  #-------------------------------------------------------------------------
  echo
  echo "----- FEITO (16 / $TOTAL) ----------------------------------------------------------"
}

instalar_R
