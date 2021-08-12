#!/bin/bash

CORRECT=0

tmpoutput=`echo -e 11 '\n' 6 | python subtract.py`
f1=`echo $tmpoutput | grep -q '5'`
if [ $? = 0 ]; then
    let CORRECT=CORRECT+1
fi

tmpoutput=`echo -e 23 '\n' 8 | python subtract.py`
f1=`echo $tmpoutput | grep -q '15'`
if [ $? = 0 ]; then
    let CORRECT=CORRECT+1
fi

exit $CORRECT
