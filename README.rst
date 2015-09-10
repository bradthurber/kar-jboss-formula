================
kar-jboss-formula
================

A pseudo-salt formula that extends the jboss-formula formula with pieces
that are KAR specific.

At the moment, this pseudo-formula has no map.jina and no init.sls instead
relying on the extended apache formula

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

All other states (unless otherwise mentioned) are meant to be run on any/all jbosseap servers
	
Available states
================

.. contents::
    :local:

``karjboss.config_logging``
------------

Configures JBoss logging in the KAR way: Creates symlinks to re-route
logs to a shared NAS volume

