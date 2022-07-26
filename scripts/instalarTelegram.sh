
# instalar Telegram =========================================================== (OK)

instalar_telegram() {
  #----------------------------------------------------------------------------
  nome_telegram_extensao=$(basename "$URL_TELEGRAM")
  #----------------------------------------------------------------------------
  echo 
  echo "##### Instalando o Telegram ===================================================="
  echo 
  #----------------------------------------------------------------------------
  cd "$TMP_INSTALACAO" || { echo "Erro na construção do diretório"; exit 1; }
  wget "$URL_TELEGRAM"
  tar xf "$nome_telegram_extensao" 
  mv Telegram "$HOME"
  #----------------------------------------------------------------------------
  echo 
  echo "----- FEITO (13 / $TOTAL) ----------------------------------------------------------"
}

instalar_telegram
