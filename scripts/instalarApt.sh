
# instalar lista de programas via apt ========================================= (OK)

instalar_apt() {
  echo 
  echo "##### Instalando lista de programas com apt ===================================="
  echo
  echo " # começando a instalação..."
  echo 
  for programa_apt in "${PROGRAMAS_APT[@]}"; do
    if ! dpkg -l | grep -q "$programa_apt"; then
      sudo apt install "$programa_apt" -y
    else
      echo "  ### [INSTALADO] --- $programa_apt "
    fi
  done
  echo 
  echo "----- FEITO (4 / $TOTAL) -----------------------------------------------------------"
}

instalar_apt
