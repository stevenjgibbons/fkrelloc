#!/bin/sh
# python fkrelloc.py DPRK3_DPRK4_icc2_list.txt --fk --fk-out plots --normalize --align-common-axis
f1=1.0
f2=3.0
ev1=DPRK2
ev2=DPRK1
addstring=demo
listfile=${ev1}_${ev2}_${addstring}_list.txt
overlay_plot=plots/${ev1}_${ev2}_${addstring}_overlay.png
fk_plot=plots/${ev1}_${ev2}_${addstring}_fk_${f1}_${f2}.png
ncfile=netcdf/${ev1}_${ev2}_${addstring}_fk_${f1}_${f2}.nc
python fkrelloc.py ${listfile} --fk --fk-out ${fk_plot} \
                   --align-common-axis --overlay-out ${overlay_plot} --fk-normalize --fk-nc ${ncfile} \
                   --fk-frqlow ${f1} --fk-frqhigh ${f2} --allow-relative-paths
