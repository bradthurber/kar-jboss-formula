{% from "jboss/map.jinja" import jboss_settings with context %}

{%- if 'jboss' in salt['grains.get']('roles') %}

# JBoss symlinks <jboss_home>/domain/log to /var/log/jbossas/domain/log
# during installation. We want the logging to be linked in-turn to an NFS mount

sym_link_var_log_jbossas_domain_to_mnt_logs:
  file.symlink:
    - name: /var/log/jbossas/domain
    - target: /mnt/logs
    - backupname: /var/log/jbossas/domain.backup

{%- endif %}