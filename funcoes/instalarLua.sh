
# instalar lua ================================================================ (OK)

instalar_lua(){
  # variável para nome do arquivo com extensão
  nome_lua_extensao=`basename $URL_LUA`
  nome_lua=`basename $URL_LUA .tar.gz`
  echo 
  echo "##### Instalando lua ==========================================================="
  echo 
  cd $TMP_INSTALACAO 
  echo " # fazendo download..."
  echo 
  wget $URL_LUA
  echo 
  echo " # extraindo os arquivos..."
  tar xzf $nome_lua_extensao
  echo 
  echo " # entrando no diretório..."
  cd $nome_lua
  echo 
  echo " # construindo lua..."
  make
  echo 
  echo " # verificando se tudo ocorreu bem..."
  echo 
  make test 
  echo 
  echo " # instalando... "
  sudo make install 
  echo
  echo "----- FEITO (5/ ) --------------------------------------------------------------"
}

