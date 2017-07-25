{% set titre = 'Hello world in salt !' %}

hello:
  cmd.run:
    - name: echo {{ titre }}