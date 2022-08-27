# ansible-openstack

OpenStack(ubuntu)にdocker等を入れていい感じにするansible
* ubuntu-22.04.01

## usage

1. `hosts/xxx` を準備

- prod をコピーして自分の環境のホスト名を入れる

2. 実行

最初のaptだけは confirm が入るので中のコマンドを手で実行した方がいい


```shell
#ansible-playbook -i hosts/dev apt.yml
ansible-playbook -i hosts/dev bootstrap.yml
ansible-playbook -i hosts/dev docker.yml
ansible-playbook -i hosts/dev motd.yml
ansible-playbook -i hosts/dev zsh.yml
```

## CentOS7

### ulimit

```console
$ echo 'fs.file-max = 100000' > /etc/sysctl.d/60-file-max.conf
$ vi /etc/security/limits.d/10-nofile.conf
*    soft    nofile 1000000
*    hard    nofile 1000000
```

