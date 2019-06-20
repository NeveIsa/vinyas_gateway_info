ansible -i inventory.ini -m shell -a "cd SAMPY/RBCCPS && rm python/tools/*.pyc && rm python/smartcity/*.pyc && git pull" all -u pi
