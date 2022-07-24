
# instalando a distribuição MiKTeX ============================================

instalar_LaTeX () {
  echo 
  echo "##### Instalando MiKTeX ========================================================"
  echo
  echo " # adicionando chave GPG..."
  echo 
  sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D6BC243565B2087BC3F897C9277A7293F59E4889
  echo 
  echo " # registrando a fonte de instalação..."
  echo 
  echo "deb http://miktex.org/download/ubuntu focal universe" | sudo tee /etc/apt/sources.list.d/miktex.list
  echo 
  echo " # instalando MiKTeX..."
  echo 
  sudo apt update -qq
  sudo apt install miktex
  echo 
  echo "----- FEITO (15 / $TOTAL) ----------------------------------------------------------"
}

instalar_LaTeX
