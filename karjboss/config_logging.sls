{% from "jboss/map.jinja" import jboss_settings with context %}

{%- if 'jboss' in salt['grains.get']('roles') %}

sym_link_jboss_log_to_mnt_logs:
  file.symlink:
    - name: {{ jboss_settings.jboss_home }}/domain/log
    - target: /mnt/logs

{%- endif %}