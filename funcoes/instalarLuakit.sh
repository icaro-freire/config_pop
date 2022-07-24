
# instalar Luakit ============================================================= (OK)

instalar_luakit() {
  echo 
  echo "##### Instalando Luakit Web Browser ============================================"
  echo 
  echo " # instalando dependências... "
  echo 
  for programa_luakit in ${DEPENDENCIAS_LUAKIT[@]}; do 
    if ! dpkg -l | grep $programa_luakit; then
      sudo apt install $programa_luakit -y
      else
        "  ### $programa_luakit --- [INSTALADO]"
    fi 
  done
  cd $TMP_INSTALACAO
  echo 
  echo " # clonando o repositório... "  
  echo 
  git clone $URL_LUAKIT
  cd luakit
  echo 
  echo " # Construindo e instalando o Luakit... "
  echo 
  make
  sudo make install
  echo
  echo "----- FEITO () -----------------------------------------------------------------"
}
