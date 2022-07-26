
# adicionar meus scripts no diretóio bin ======================================

adicionar_bin () {
  echo 
  echo "##### Copiando alguns scripts pessoais para diretóio bin, na HOME =============="
  echo "      E tornando o diretóio bin um caminho no PATH"
  echo 
  cp ./scripts/bin "$HOME" -r
  PATH="$PATH:$HOME/bin"
  echo "----- FEITO (14/ $TOTAL) -----------------------------------------------------------"
}

adicionar_bin
