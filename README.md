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

3. services

ホストを指定して実行
```shell
ansible-playbook -i hosts/dev redis.yml -l foo
```

## その他

### dockerのdataディレクトリを変更

`/` は溢れるので、別マウント(`/data`)とかに、既存データを含めて移動させたい場合

```console
# 移動させるホスト(foo)の変数で `docker_root` を指定
$ vi host_vars/foo.yml
docker_root: "/data/docker"

# docker-migrate-dir.yml プレイブックを実行
$ ansible-playbook docker-migrate-dir.yml -l foo

# ホストfooのディレクトリが以下のようになる
$ ls -ld /var/lib/docker*
lrwxrwxrwx  1 root root   17  9月  7 19:01 /var/lib/docker -> /data/docker/data
drwx--x--- 13 root root 4096  9月  7 16:13 /var/lib/docker.moved                # 元データ

$ ls -ld /data/docker/data
drwx--x--- 13 root root 4096  9月  7 19:01 /data/docker/data                    # 新しいdir
```

## CentOS7

### ulimit

```console
$ echo 'fs.file-max = 100000' > /etc/sysctl.d/60-file-max.conf
$ vi /etc/security/limits.d/10-nofile.conf
*    soft    nofile 1000000
*    hard    nofile 1000000
```

