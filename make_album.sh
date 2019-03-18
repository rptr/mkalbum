#!/bin/bash

ind=$1
oud=$2

if [ "$1" = "" ]; then
    echo "please specify a directory"
fi

if [ "$2" = "" ]; then
    echo "please speciy output file (e.g. gallery.html)"
fi

if [ "$ind" != "" ] && [ "$oud" != "" ]; then
    html="<html>"
    
    # css
    html="$html <head><style>
        .thumb {
            width: 200px;
            height: 200px;
            border: 2px black solid;
        }
        "
    
    # body
    html="$html </style></head><body>"
    
    for fn in $1*; do
        html="$html <a href=\"$fn\"><img class=\"thumb\" src=\"$fn\"/></a>"
    done
    
    html="$html </body></html>"
    
    touch $oud
    echo $html > $oud
fi

