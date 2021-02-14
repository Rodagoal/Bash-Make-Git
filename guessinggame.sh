dirarray=($(ls -d */))
dircount=${#dirarray[@]}
dirguess=0

function checkguess {   
    if [[ $1 -lt $2 ]]
    then
    echo "Too low"
    elif [[ $1 -gt $2 ]]
    then
    echo "Too high"
    fi
}

while [ $dirguess -ne $dircount ]
do
echo "Guess the number of directories"
read dirguess

$(checkguess $dirguess $dircount)

done
echo "Well done, you are a genius"
