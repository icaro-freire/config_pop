
ppa_adicionar () {
  echo 
  echo "##### adicionando ppa's ========================================================"
  echo 
  echo " # atualizando os repositórios..."
  echo 
  sudo apt update -qq
  echo 
  echo " # adicionado ppa's..." 
  echo 
  sudo $PPA_GIT 
  sudo $PPA_INKSCAPE 
  echo  
  echo " # atualizando novamente os repositórios após as adições anteriores" 
  echo 
  sudo apt update 
  echo
  echo "----- FEITO (2 / $TOTAL) -----------------------------------------------------------"
}

ppa_adicionar