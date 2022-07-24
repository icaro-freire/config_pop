
# instalar Telegram =========================================================== (OK)

instalar_telegram() {
  nome_telegram_extensao=`basename $URL_TELEGRAM`
  echo 
  echo "##### Instalando o Telegram ===================================================="
  echo 
  cd $TMP_INSTALACAO
  wget $URL_TELEGRAM
  tar xf $nome_telegram_extensao 
  mv Telegram $HOME
  echo 
  echo "----- FEITO (/) ----------------------------------------------------------------"
}

