#!/bin/bash

echo "* Sourcing pcds_conda to get access to 'conda'"
source /reg/g/pcds/pyps/conda/pcds_conda || echo "Sourcing pcds_conda failed"

echo "* Sourcing this IOC's configuration"

. config.sh

echo "  IOC:                     $IOC"
echo "  IOC_COMMAND:             $IOC_COMMAND"
echo "  PREFIX:                  $PREFIX"
echo "  IOC_DATA_PATH:           $IOC_DATA_PATH"
echo "  CONDA_ENV_PATH:          $CONDA_ENV_PATH"
echo "  EPICS_CA_AUTO_ADDR_LIST: $EPICS_CA_AUTO_ADDR_LIST"
echo "  EPICS_CA_ADDR_LIST:      $EPICS_CA_ADDR_LIST"
echo "  CAPTURE_LOGS:            $CAPTURE_LOGS"
echo "  LOG_FILE_PATH:           $LOG_FILE_PATH"

echo "* Deactivating any existing conda environment"
conda deactivate || echo "Deactivation failed?"

echo "* Activating the conda environment: $CONDA_ENV_PATH"
conda activate --no-stack "$CONDA_ENV_PATH" 2>&1 || echo "Sourcing environment failed! ($?)"

echo "(activate_env.sh complete)"
echo
