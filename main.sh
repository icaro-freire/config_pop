#!/bin/bash

#===========================================================================
# Nome     : intalarProgramas
#            Copyright (c) 2022 Ícaro Vidal Freire 
#---------------------------------------------------------------------------
# Descrição: Script para instalar e configurar alguns de meus principais 
#            programas usados no Pop!_OS LTS 20.04
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#---------------------------------------------------------------------------
# Como usar: No diretório onde se encontra o arquivo, rodar './main.sh'
#===========================================================================

# definindo variáveis fundamentais para o script ou instalação =============

TMP_INSTALACAO="$HOME/Downloads/tmp_instalacao"

ARQUIVO_ZSHRC="$HOME/.zshrc"

DIR_CONFIG_NVIM="$HOME/.config/nvim"
DIR_LOCAL_NVIM="$HOME/.local/share/nvim"

DIR_TabNine="$HOME/.config/TabNine"
DIR_LOCAL_TabNine="$HOME/.local/share/TabNine"

DIR_DESTINO="$HOME/.config"

TOTAL=18

# carregando diversas listas para instalação ===============================

source ./scripts/urlLista.sh #----------> lista de url's 
source ./scripts/ppaLista.sh #----------> lista de ppa's
source ./scripts/aptLista.sh #----------> lista para instalação via apt
source ./scripts/depLista.sh #----------> lista de dependências de programas
source ./scripts/flatpakLista.sh #------> lista para instalação via flatpak

# iniciando o processo #####################################################

source ./scripts/tmpInstalacao.sh #------------> cria diretórios temporários    .01
source ./scripts/ppaAdicionar.sh #-------------> adiciona ppa's de programas    .02

# carregando as funções para instalação ====================================

source ./scripts/instalarGit.sh #--------------> instala o git (com ppa)        .03
source ./scripts/instalarApt.sh #--------------> instala programas via apt      .04
source ./scripts/instalarSl.sh #---------------> instala o sl (tremzinho)       .05
source ./scripts/instalarFlatpak.sh #----------> instala programas via flatpak  .06
source ./scripts/instalarLua.sh #--------------> instala o lua                  .07
source ./scripts/instalarNerdFonts.sh #--------> instala as nerf-fonts          .08
source ./scripts/instalarNeovim.sh #-----------> instala o neovim               .09
source ./scripts/instalarOhMyZsh.sh #----------> instala o oh my zsh            .10
source ./scripts/instalarTor.sh #--------------> instala o tor browser          .11
source ./scripts/instalarLuakit.sh #-----------> instala o luakit web browser   .12
source ./scripts/instalarTelegram.sh #---------> instala o telegram             .13
source ./scripts/adicionarBin.sh #-------------> adiciona scripts em ~/bin      .14
source ./scripts/instalarLaTeX.sh #------------> instala o MiKTeX               .15
source ./scripts/instalarR.sh #----------------> instala e configura o R        .16
source ./scripts/instalarRStudio.sh #----------> instala o RStudio              .17
source ./scripts/configurarNeovim.sh #---------> configura o Neovim             .18



# finalizando a instalação =================================================

source ./scripts/limpeza.sh #------------------> remove diretórios temporários 
#                                                atualiza repositórios
#                                                atualiza programas 
#                                                efetua limpeza de pacotes

############################################################################

exit
