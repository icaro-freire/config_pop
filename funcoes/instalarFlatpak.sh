
# instalar programas via flatpak ============================================== (OK)

instalar_flatpak() {
  echo 
  echo "##### Instalando lista de programas via Flatpak ================================"
  echo 
  for programa_flatpak in ${PROGRAMAS_FLATPAK[@]}; do
    if ! flatpak list | grep -q $programa_flatpak; then
     flatpak install flathub $programa_flatpak -y
    else
      echo "  ### $programa_flatpak --- [INSTALADO]"
    fi
  done
  echo
  echo "----- FEITO (6 / $TOTAL) -------------------------------------------------------------"
}

instalar_flatpak
