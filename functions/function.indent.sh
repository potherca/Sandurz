#!/usr/bin/env bash

source "${HOME}/.common.sh"
sourceFunction isMacOS

# ==============================================================================
function indent() {
# ------------------------------------------------------------------------------
    c='s/^/       /'
    if [ isMacOS ];then
        sed -l "$c"
    else
        sed -u "$c"
    fi
}
# ==============================================================================


# ==============================================================================
if [ "${0}" = "${BASH_SOURCE}" ];then
    # direct call to file
    echo $@ | indent
fi # else file is included from another script
# ==============================================================================

#EOF
