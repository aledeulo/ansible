#! /bin/bash -e
rm inventory
./init_inventory.sh
cat inventory
ansible-playbook main-remote.yml -i inventory --private-key $1 -u ec2-user
