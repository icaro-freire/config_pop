
# instalando o Git (com ppa) =============================================== (OK)

instalar_git() {
  echo 
  echo "##### Instalando o Git ========================================================="
  echo 
  #-------------------------------------------------------------------------
  sudo apt install git -y
  #-------------------------------------------------------------------------
  echo 
  echo " # configurações iniciais "
  echo 
  #-------------------------------------------------------------------------
  read -p "Digite o e-mail: " email_git
  read -p "Digite o usuário: " usuario_git
  #-------------------------------------------------------------------------
  echo 
  echo " # adicionando usuário e email às configurações do Git" 
  #-------------------------------------------------------------------------
  git config --global user.name "$usuario_git"
  git config --global user.email "$email_git"
  #-------------------------------------------------------------------------
  echo 
  echo "----- FEITO (3 / $TOTAL) -----------------------------------------------------------"
}

instalar_git
