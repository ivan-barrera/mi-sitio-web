#!/usr/bin/env bash
# Compila las dos versiones del sitio (español e inglés)
set -e
quarto render                # español (perfil por defecto)
quarto render --profile en   # inglés
echo ""
echo "Listo. Sitio completo en _site/"
echo "Para publicarlo: quarto publish gh-pages --no-render"
