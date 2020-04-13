#! /bin/bash
#1
echo ""
read -p "Enter your name:" STUDENT_NAME
echo ""
read -p "Enter your id:" STUDENT_ID

#2
secret=manchester
fcount=5
success=0
while [ $fcount -gt 0 ]
do
    echo ""
    echo "Enter Secret Key:"
    read inp

    if [ $inp == $secret ]
    then
        success=1
        break
    else
        ((fcount--))
        echo ""
        echo "You have ${fcount} tries left "
    fi
done

if [ $fcount == 0 ]
then
        exit
fi


#3
echo "============================================"
echo "========ID Number: ${STUDENT_ID}============"
echo "========Student Name: ${STUDENT_NAME}======="
date +%c




#5
continues=true
while $continues == true
do
#4
echo ""
echo "Name:Australia  Code: AUS"
echo "Name:Bangladesh  Code: BAN"
echo "Name:Nepal  Code: NEP"
echo "Name:India  Code: IND"
echo "Name:England  Code: ENG"

BEST_CRICKET_TEAM=""
while [ "$BEST_CRICKET_TEAM" != "NEP" ]
do
    read -p "Guess Which one is best cricket team:" BEST_CRICKET_TEAM

    if [ "$BEST_CRICKET_TEAM" == "NEP" ] 
    then
        echo ""
        echo "Nepal is fantastic"
        break
    else
        echo ""
        echo "Your guess was shatterly wrong. Please choose again"
    fi
done

#6
echo ""
echo "#### Players Code ###"
echo "Name:Paras Khadka Code: PK"
echo "Name: Virat Kohli Code: VK"
echo "Name: David Warner Code: DW"
echo "Name: Ben Stokes Code: BS"
echo "Name: Ross Taylor Code: RT"

#7
echo ""
read -p "Type Three player code separated by space:" CHOSED_PLAYERS_1

IFS=" " 
read -ra ADDR <<< "$CHOSED_PLAYERS_1"

while true
do

for i in "${!ADDR[@]}";
do
    echo "$i: ${ADDR[$i]}"
done

echo ""
read -p "Chose One Player Code:" CHOSED_PLAYER

if [ $CHOSED_PLAYER == 0 -o $CHOSED_PLAYER == 1 -o $CHOSED_PLAYER == 2 ]
then
    echo ""
    echo "Chosed Player: ${ADDR[$CHOSED_PLAYER]}"
    file="./${ADDR[$CHOSED_PLAYER]}.txt"
    if [ ! -f $file ]
    then 
        echo ""
        echo "The file $file was not found"
        break
    else
        while read -r CURRENT_LINE
        do
            echo ""
            echo "$CURRENT_LINE"
        done < "$file"

        echo ""
        read -p "Do you want to repeat the process ?" REPEAT_PROCESS
        case "$REPEAT_PROCESS" in
            [yY] | [yY][eE][sS])
                continues=true
                ;;
            [nN] | [nN][oO])
                continues=false
                ;;
        esac

        break
    fi
else
    echo ""
    echo "Chose one number from menu list: "
fi
done



done
