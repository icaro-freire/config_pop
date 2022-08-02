
ppa_adicionar () {
  echo 
  echo "##### adicionando ppa's ========================================================"
  echo 
  echo " # atualizando os repositórios..."
  echo 
  #-------------------------------------------------------------------------
  sudo apt update -qq
  #-------------------------------------------------------------------------
  echo 
  echo " # adicionado ppa's..." 
  echo 
  #-------------------------------------------------------------------------
  sudo "$PPA_GIT" 
  sudo "$PPA_INKSCAPE"
  ## adicionando repositório do Nala
  echo "deb https://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list 
  wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null 
  echo "deb-src https://deb.volian.org/volian/ scar main" | sudo tee -a /etc/apt/sources.list.d/volian-archive-scar-unstable.list

  #-------------------------------------------------------------------------
  echo  
  echo " # atualizando novamente os repositórios após as adições anteriores" 
  echo 
  #-------------------------------------------------------------------------
  sudo apt update 
  #-------------------------------------------------------------------------
  echo
  echo "----- FEITO (2 / $TOTAL) -----------------------------------------------------------"
}

ppa_adicionar
