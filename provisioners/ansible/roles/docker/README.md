## Role Name
Docker 

Ansible playbook to install docker-ce and docker compose

## Role Variables

```docker_repo: /etc/yum.repos.d/docker.repo
docker_ce: docker-ce
log_rotate: /etc/logrotate.d/
docker_service_loc: /usr/lib/systemd/system/docker.service
docker_systemd_loc: /etc/systemd/system
cron_daily: /etc/cron.daily
compose_version: 1.18.0
#To add Docker driver set logstash server address
#logstash_server: ```


## Example Playbook

docker.yml
```
    - hosts: servers
      roles:
         - { role: docker }
```

ansible-playbook docker.yml -u centos --private-key <path/to/privatekey>