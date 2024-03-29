> DEPRECATED: moved to [gorilych/ansible](https://github.com/gorilych/dockerfiles/tree/master/ansible)

# Ansible in docker

Docker image with preinstalled ansible, to be used as ansible control machine.

Base image: [williamyeh/ansible:ubuntu16.04](https://hub.docker.com/r/williamyeh/ansible/ "williamyeh/ansible:ubuntu16.04")

## Usage

Provided that you have all playbook information (cfg/hosts/vault/keys/etc) in a single directory, run below commands

```bash
cd playbook_dir
# run shell
docker run -ti --rm --volume `pwd`:/ansible gorilych/ansible
# run any other command
docker run -ti --rm --volume `pwd`:/ansible gorilych/ansible ansible --version
# run playbook
docker run -ti --rm --volume `pwd`:/ansible gorilych/ansible ansible-playbook site.yml
```

If `requirements.txt` exists in playbook directory, it will install needed python modules with pip.
