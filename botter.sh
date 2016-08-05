#!/bin/bash
#The purpose of this script is to send out annoying texts to randomly generated phone numbers.
#---------------------------------------------------------------------------------------------
#The two var's are a way to generate random phone numbers.
PHONENUMBER=${RANDOM}
PHONENUMBERO=${RANDOM}

# Here you will create a new local identity.

function circuit {
        echo -e 'AUTHENTICATE ""\r\nsignal NEWNYM\r\nQUIT' | nc 127.0.0.1 9051
}
#Here you will create a new public identity.
function curler {
        torify curl ifconfig.me 2>/dev/null
}
function botter {
        torify curl http://textbelt.com/text -d number=$PHONENUMBER+$PHONENUMBERO -d "message=Hello! Please join the fight against ISIS only at http://www.ticklechan.biz!"
        echo ""
}

#Here, we call functions within a function!

function wamola {
        circuit
        curler
        botter
}
#WAMOLLLLAA!!!
#Call the functions
clear
wamola


#That's all folks!
