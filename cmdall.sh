ansible -i inventory.ini -m raw -a "$@" all -u pi --become

