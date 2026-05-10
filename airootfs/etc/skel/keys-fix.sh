#!/bin/bash

echo "== fixing keyringa pacman =="

# Sprawdzenie czy root
if [ "$EUID" -ne 0 ]; then
  echo "Uruchom jako root (sudo)!"
  exit 1
fi

echo "== Inicjalizacja kluczy =="
pacman-key --init

echo "== Pobieranie kluczy =="
pacman-key --populate archlinux

echo "== Aktualizacja systemu =="
pacman -Sy
pacman -Syu

echo "== Done now you can delete this file =="
