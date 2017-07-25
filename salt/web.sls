# Install python dependances and other packages
/home/khidma/dev:
  file.directory:
    - user: apache
    - group: apache
    - dir_mode: 755
    - makedirs: True
    - recurse:
      - mode
      - user
      - group

install_packages:
  pkg.installed:
    - pkgs:
      - python2-pip
      - httpd 
      - mod_wsgi
      - git
    - verify_options:
      - nodeps
      - nofiledigest

download_depot:
  git.latest:
    - name: https://github.com/mourkeita/django-rh.git
    - target: /home/khidma/dev/django-rh
    - user: root


