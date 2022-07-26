
# instalar oh my zsh ========================================================== (OK)

instalar_ohmyzsh() {
  echo 
  echo "##### Instalando o Oh My ZSH ==================================================="
  echo 
  cd "$HOME" || { echo "Erro na construção do diretório"; exit 1; }
  echo " # instalando via wget..."
  echo
  sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
  echo 
  echo " # mudando o tema para bira..."
  echo
  sed -i '11 s/robbyrussell/bira/g' "$ARQUIVO_ZSHRC" 
  echo 
  echo " # definindo como shell padrão..."
  echo
  sudo usermod -s /usr/bin/zsh $(whoami)
  echo 
  echo " # clonando repositórios de plugins..."
  echo
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions 
  echo 
  echo " # ativando os plugins nas configurações..."
  echo
  sed -i '73 s/git/git git-flow gitignore zsh-syntax-highlighting zsh-autosuggestions/g' "$ARQUIVO_ZSHRC"
  echo 
  echo " # dando source no zshrc..."
  echo 
  source "$ARQUIVO_ZSHRC"
  echo "----- FEITO (10 / $TOTAL) ----------------------------------------------------------"
}

instalar_ohmyzsh
