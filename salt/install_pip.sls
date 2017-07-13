install_packages:
  pkg.installed:
    - pkgs:
      - python2-pip
      - httpd 
      - mod_wsgi
    - verify_options:
      - nodeps
      - nofiledigest
