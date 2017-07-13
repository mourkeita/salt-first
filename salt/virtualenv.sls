virtualenv:
  pip.installed:
    - name: virtualenv

create_activate_venv:
  cmd.run:
    - name: virtualenv /home/dev/venv ;source /home/dev/venv/bin/activate
    - user: root
