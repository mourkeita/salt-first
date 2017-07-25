{% set titre = 'Hello world in salt !'%}

affiche:
  cmd.run:
    - name: echo { titre }