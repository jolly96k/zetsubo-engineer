---
title: aptパッケージを更新して再起動する
lastmod: 2023-11-17
---

OSインストールの度に忘れるのでメモ。
```bash
#! /usr/bin/env bash

set -euxo pipefail

SCRIPT_DIRNAME=$(cd $(dirname ${0}) && pwd)

cd ${SCRIPT_DIRNAME}

sudo apt update && sudo apt full-upgrade -y && sudo apt autopurge -y
sudo apt autoclean && sudo rm -rf /var/lib/apt/lists
# gsettings set org.gnome.shell app-picker-layout "[]"

rm -rf ${HOME}/.config/htop/htoprc

sudo reboot
```