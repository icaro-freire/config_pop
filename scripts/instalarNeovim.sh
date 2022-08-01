
# instalar neovim ========================================================== (OK)

instalar_neovim() {
  echo 
  echo "##### Instalação do neovim ===================================================="
  echo
  echo " # atualizando repositórios... "
  echo 
  #-------------------------------------------------------------------------
  sudo apt update -y
  #-------------------------------------------------------------------------
  echo 
  echo " # instalando dependências... "
  echo 
  #-------------------------------------------------------------------------
  for programa_nvim in "${DEPENDENCIAS_NEOVIM[@]}"; do 
    if ! dpkg -l | grep -q "$programa_nvim"; then
      sudo apt install "$programa_nvim" -y
    else
      echo "  ### [INSTALADO] --- $programa_nvim "
    fi 
  done
  #-------------------------------------------------------------------------
  echo 
  cd "$TMP_INSTALACAO" || { echo "Erro na construção do diretório"; exit 1; }
  #-------------------------------------------------------------------------
  echo " # clonando o repositório do neovim... "
  echo 
  #-------------------------------------------------------------------------
  git clone "$URL_NEOVIM" 
  cd neovim || { echo "Erro na construção do diretório"; exit 1; }
  #-------------------------------------------------------------------------
  echo " # construindo o neovim... "
  echo
  #-------------------------------------------------------------------------
  make CMAKE_BUILD_TYPE=Release
  #-------------------------------------------------------------------------
  echo 
  echo " # instalando o neovim... "
  #-------------------------------------------------------------------------
  sudo make install 
  #-------------------------------------------------------------------------
  echo 
  echo " # tornando o Neovim o editor padrão para o Git"
  #-------------------------------------------------------------------------
  git config --global core.editor nvim
  #-------------------------------------------------------------------------
  echo 
  echo "----- Feito (9 / $TOTAL) ------------------------------------------------------------"
}

instalar_neovim
