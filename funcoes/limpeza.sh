
limpeza (){ 
  # removendo diretório temporário ---------------------------------------------
  echo 
  echo "##### Iniciando a limpeza ======================================================"
  echo 
  echo " # removendo diretório tmp_instalacao..." 
  rm $TMP_INSTALACAO -r 
  # limpeza e CIA -------------------------------------------------------------- 
  echo 
  echo " # atualizações e limpeza..." 
  echo 
  sudo apt update && sudo apt upgrade -y 
  flatpak update -y 
  sudo apt autoclean -y 
  sudo apt autoremove -y 
  # mensagem final ------------------------------------------------------------- 
  echo 
  echo "----- FEITO () -----------------------------------------------------------------"
  echo 
  echo "##### Instalações e configurações concluídas" 
  echo "##### Lembrar de configurar:"
  echo "      - Telegram"
  echo "      - Neovim"
}
