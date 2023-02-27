ioc-rix-calc IOC Startup Scripts
=====================================================

 This is a caproto based IOC for the purpose of performing python based calculation, and converting the outputs to usable PVs.

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
