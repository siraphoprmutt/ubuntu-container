# จำลอง server ubuntu ในเครื่อง โดยใช้ docker

## 1. Run `docker compose up -d`

## 2. รีโมทเข้า server ด้วย ssh `ssh docker@localhost`

```bash

ssh docker@localhost

```

## 3. หากขึ้นเตือนแบบนี้ ใช้คำสั่ง `ssh-keygen -R localhost` เพื่อลบ ค่าเก่าของ ssh หรอืไปลบที่ C:\\Users\\AccountUser/.ssh/known_hosts

```bash

AccountUser@LAPTOP-0ILL2CO4 MINGW64 ~/ubuntu
$ ssh docker@localhost
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that a host key has just been changed.
The fingerprint for the ED25519 key sent by the remote host is
SHA256:cKuoipqwDCro0lGoHUnTSh8//9ZtBYvTZgi32uMrnC8.
Please contact your system administrator.
Add correct host key in C:\\Users\\AccountUser/.ssh/known_hosts to get rid of this message.
Offending ECDSA key in C:\\Users\\AccountUser/.ssh/known_hosts:46
Host key for localhost has changed and you have requested strict checking.
Host key verification failed.

AccountUser@LAPTOP-0ILL2CO4 MINGW64 ~/ubuntu

```

## 4.ลอง `ssh docker@localhost` อีกรอบ ขึ้นแบบนี้ พิมพ์ `yes` และ Enter เพื่อยืนยัน ssh

```bash

$ ssh docker@localhost
The authenticity of host 'localhost (::1)' can't be established.
ED25519 key fingerprint is SHA256:cKuoipqwDCro0lGoHUnTSh8//9ZtBYvTZgi32uMrnC8.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])?
docker@localhost's password:

```

## 4. ใส่ password `docker` แล้ว Enter (ค่าเริ่มต้นคือ username: docker และ password: docker)

```bash

docker@localhost's password:
Welcome to Ubuntu 22.04.5 LTS (GNU/Linux 5.15.167.4-microsoft-standard-WSL2 x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/pro

This system has been minimized by removing packages and content that are
not required on a system that users do not log into.

To restore this content, you can run the 'unminimize' command.

The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

docker@274412180d46:~$

```
