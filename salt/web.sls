# Install python dependances and other packages
/home/dev:
  file.directory:
    - user: root
    - group: root
    - dir_mode: 644
    - makedirs: True

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
    - target: /home/dev
    - user: root


