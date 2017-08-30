# ansible-openstack

OpenStack(ubuntu-16.04)にdocker等を入れていい感じにするansible

# usage

1. `hosts` の修正

- ホスト名のみ変更する

2. ssh疎通確認

```shell
make test
```

3. 実行

```shell
make deploy
```

以下と同じ

```shell
ansible-playbook -i hosts docker-openstack.yml
ansible-playbook -i hosts ja.yml
ansible-playbook -i hosts apt.yml
```
