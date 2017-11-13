# ansible-openstack

OpenStack(ubuntu)にdocker等を入れていい感じにするansible
- playbook毎に想定する16.04,18.04があるので注意
- 環境: `dev`, `prod`

# usage

1. `hosts/xxx` の修正

- 環境に応じてホスト名のみ変更する

2. ssh疎通確認

```shell
make test ENV=dev
```

3. 実行

```shell
make deploy ENV=dev
```

以下と同じ

```shell
ansible-playbook -i hosts/dev docker-openstack.yml -l cto-clickhouse --check
ansible-playbook -i hosts/dev ja.yml
ansible-playbook -i hosts/dev apt.yml
ansible-playbook -i hosts/dev zsh.yml
```
