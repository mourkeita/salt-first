create_activate_venv:
  cmd.run:
    - name: virtualenv /home/khidma/dev/venv ;source /home/khidma/dev/venv/bin/activate
    - user: root

virtualenv:
  cmd.run:
    - name: pip install virtualenv

chmod:
  cmd.run:
    - name: chmod -R 777 /home/khidma; chmod -R 755 /var/www/html

chown:
  cmd.run:
    - name: chown apache:apache  /home/khidma 
install_django:
  pip.installed:
    - requirements: /home/khidma/dev/django-rh/rh/req.txt
