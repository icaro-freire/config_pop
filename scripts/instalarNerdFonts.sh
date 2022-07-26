
# instalar nerd fonts ========================================================= (OK)

instalar_NerdFontes () {
  echo 
  echo "##### Instalando as Nerd Fonts ================================================="
  echo
  #----------------------------------------------------------------------------
  mkdir -p "$HOME/.local/share/fonts" 
  cd "$TMP_INSTALACAO" || { echo "Erro na construção do diretório"; exit 1; }
  #----------------------------------------------------------------------------
  echo " # clonando o repositório ..."
  echo 
  #----------------------------------------------------------------------------
  git clone "$URL_FONTES"
  cd fonts/fonts || { echo "Erro na construção do diretório"; exit 1; }
  mv ./*.ttf ./*.otf "$HOME/.local/share/fonts/"
  #----------------------------------------------------------------------------
  echo 
  echo " # atualizando o cache..."
  echo 
  #----------------------------------------------------------------------------
  sudo fc-cache -fv
  #----------------------------------------------------------------------------
  echo 
  echo "----- FEITO (8 / $TOTAL) ------------------------------------------------------------"
}

instalar_NerdFontes
