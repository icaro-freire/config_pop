
# cria diretório temporário para armazenar arquivos ===========================

tmp_instalacao () {
  echo 
  echo "##### criando diretório temporário para instalação =============================" 
  echo 
  #----------------------------------------------------------------------------
  mkdir -p "$TMP_INSTALACAO" 
  mkdir -p "$HOME_TESTE"
  #----------------------------------------------------------------------------
  echo "----- FEITO (1 / $TOTAL) -----------------------------------------------------------"
}

tmp_instalacao
