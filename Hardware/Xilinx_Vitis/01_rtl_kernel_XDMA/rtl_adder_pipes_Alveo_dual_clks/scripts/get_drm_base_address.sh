#!/bin/bash
DESIGN_OBJ=$1
INFO_FILE=${DESIGN_OBJ}.info

drm_section=`grep -Fn 'Signature: kernel_drm_controller' ${INFO_FILE} | cut -d: -f1`
grep -Fn 'Base Address' ${INFO_FILE} | cut -d: -f1 | while read -r line_nb ; do
  if [ ${line_nb} -gt ${drm_section} ]; then
    drm_base_addr=`head -n ${line_nb} ${INFO_FILE} | tail -1 | cut -d: -f2 | xargs` 
    echo "${drm_base_addr}"
    exit 0
  fi
done
exit 1
