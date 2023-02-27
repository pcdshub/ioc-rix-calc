ioc-rix-calc IOC Startup Scripts
=====================================================

Startup script for the ioc-rix-calc IOC, based on the source code of https://github.com/wwright-slac/rixcalc
Any future changes to the calculator should be made to rixcalc, not this repository. This startup script was generated from https://github.com/pcdshub/cookiecutter-caproto-ioc-startup

config.sh
---------

The IOC configuration settings are primarily in this file.

initialize.sh
-------------

This script creates the environment necessary to run the IOC.

activate\_env.sh
----------------

Use this script to activate the conda environment previously built by
``initialize.sh``.

st.cmd
------

This is the {bash, procserv, IocManager}-compatible entry point
for starting the IOC.
