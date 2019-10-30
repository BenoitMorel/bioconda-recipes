#!/bin/bash

make
mkdir ${PREFIX}/bin
cp -p build/HAPCUT2 build/extractHAIRS ${PREFIX}/bin/
for script in LinkFragments.py calculate_haplotype_statistics.py; do
  cp -p utilities/${script} ${PREFIX}/bin
  chmod +x ${PREFIX}/bin/${script}
done
