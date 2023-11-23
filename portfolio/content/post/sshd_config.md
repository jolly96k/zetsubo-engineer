---
title: sshdの設定
lastmod: 2023-11-17
---

OSインストールの度に忘れるのでメモ。

下記を参考に公開鍵をOSに登録する。  
https://knowledge.sakura.ad.jp/3543/

/etc/ssh/sshd_config
```conf
Include /etc/ssh/sshd_config.d/*.conf
```

/etc/ssh/sshd_config.d/XXX.conf
```conf
AllowUsers <user-name>
PasswordAuthentication no
PermitRootLogin no
Port <port-number>
UsePAM yes

Subsystem sftp  /usr/lib/openssh/sftp-server
```

設定が完了したらOSを再起動する。