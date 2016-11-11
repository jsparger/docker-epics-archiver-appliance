#!/bin/bash

# don't allow unbound variables
set -u
set -e

# mention all variables 
source myenv.sh
echo -e "archappl short term storage:\t ${ARCHAPPL_SHORT_TERM_FOLDER:?Error: Currently unset.}"
echo -e "archappl medium term storage:\t ${ARCHAPPL_MEDIUM_TERM_FOLDER:?Error: Currently unset.}"
echo -e "archappl long term storage:\t ${ARCHAPPL_LONG_TERM_FOLDER:?Error: Currently unset.}"
echo -e "archappl database storage:\t ${ARCHAPPL_DB_FOLDER:?Error: Currently unset.}"
echo -e "archappl scripts directory:\t ${ARCHAPPL_SCRIPTS_FOLDER:?Error: Currently unset.}"
echo -e "archappl default directory:\t ${ARCHAPPL_DEFAULT_FOLDER:?Error: Currently unset.}"
echo -e "archappl etc directory:\t\t ${ARCHAPPL_ETC_FOLDER:?Error: Currently unset.}"

# Replace the environment variables in the template Rockerfile and write the output to ./tmp
mkdir -p tmp
cat templates/docker-compose.yml | envsubst > ./docker-compose.yml