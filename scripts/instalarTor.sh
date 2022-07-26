
# instalar Tor Browser ========================================================  (OK)

instalar_tor() {
  nome_tor_extensao=$(basename "$URL_TOR")
  echo 
  echo "##### Instalando o Tor Browser ================================================="
  echo
  cd "$TMP_INSTALACAO" || { echo "Erro na construção do diretório"; exit 1; }
  echo " # fazendo o download..."
  echo 
  wget "$URL_TOR"
  echo 
  echo " # extraindo arquivos..."
  echo 
  tar xf "$nome_tor_extensao" 
  echo " # movendo para HOME..." 
  mv tor-browser_en-US "$HOME"
  echo
  echo "----- FEITO (11 / $TOTAL) ----------------------------------------------------------"
}

instalar_tor
