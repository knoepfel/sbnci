#!/bin/bash

# Set code name and version to have experiment agnostic env vars
source sbnci_setcodename.sh

## Introduce environment variables specific to this validation
export ref_ana_hist=${ref_showervalidation_hist}
export normalise_plots=${normalise_plots_showervalidation}

## Name of plotting script. This should be the only line that needs changing for other CI chains.
plotScript="$SBNCI_DIR/scripts/sbnciplot_showervalidation_${expName}.C"

## Passing the plotting script name and the input file name to sbnciplots.sh
source sbnciplots.sh $plotScript ${1}
