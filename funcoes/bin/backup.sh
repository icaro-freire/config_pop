#!/bin/bash

#==============================================================================
# Nome     : backup.sh
#            Copyright (c) 2022 Ícaro Vidal Freire 
#------------------------------------------------------------------------------
# Descrição: Script para backup sincronizado entre minha home e hd_antigo
# Licença  : The MIT License (MIT)
# Versão   : 0.1.0
#------------------------------------------------------------------------------
# Como usar: Digitar 'backup.sh', no terminal  
#==============================================================================

# variáveis -------------------------------------------------------------------
origens=(
  /home/icaro/Documentos
  /home/icaro/Imagens
  /home/icaro/bin
  /home/icaro/fontes_icaro
  /home/icaro/projetos_LaTeX
  /home/icaro/projetos_R
  /home/icaro/repositorios_GitHub
  /home/icaro/Lua
)
destino=/media/icaro/hd_antigo/.backup_teste

# comandos para sincronização -------------------------------------------------

rsync -hva --delete "${origens[@]}" $destino
