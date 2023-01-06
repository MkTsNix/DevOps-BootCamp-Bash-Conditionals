#!/bin/bash

# Place your code here

#!/bin/bash

for i in $(echo "$1" | grep -o .)
    do
        case "$i" in
            [\!\@\#\$\%\^\&\(\)\_\+\*] ) 
	            ((symbols++));;
            [0-9] )
	            ((numbers++));;
            [a-z-A-Z] )
	            ((letters++));;
        esac
    done

echo "Numbers: $numbers Symbols: $symbols Letters: $letters"
