#!/bin/bash

echo "Debug helper script for CS61C Proj3 su19"
echo -e "Created by Jianning Wang\n"
echo $"Usage: $0 [one|two|user] <test_name>"
echo -e $"e.g.: $0 one addi\n"

echo_in_red(){
    echo -e $"\e[31m$1\e[0m"
}

if [ "$1" == "" ]; then
    echo "No test type! [one|two|user]"
    exit
else
    case $1 in
        "one")  test_dir="onestage-tests";;
        "two")  test_dir="twostage-tests";;
        "user") test_dir="my_tests";;
        *) echo "No such test type! [one|two|user]"
            exit;;
    esac 
fi

if [ "$2" == "" ]; then
    echo "No test name! <test_name>"
    exit
fi

RAND_FILENAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
echo_in_red "CORRECT:"
python3 ./"$test_dir"/circ_files/binary_to_hex.py "$test_dir"/circ_files/reference_output/CPU-"$2".out
python3 ./"$test_dir"/circ_files/binary_to_hex.py "$test_dir"/circ_files/reference_output/CPU-"$2".out >/tmp/"$RAND_FILENAME"_standard.out
echo_in_red "MINE:"
python3 ./"$test_dir"/circ_files/binary_to_hex.py "$test_dir"/circ_files/output/CPU-"$2".out
python3 ./"$test_dir"/circ_files/binary_to_hex.py "$test_dir"/circ_files/output/CPU-"$2".out > /tmp/"$RAND_FILENAME"_mine.out
echo_in_red "Source:"
echo "$2".s
cat  -nb ./"$test_dir"/input/"$2".s
echo_in_red "Hex:"
echo "$2".hex
cat  -n ./"$test_dir"/input/"$2".hex
echo_in_red "Diff: (CORRECT vs MINE)"
diff /tmp/"$RAND_FILENAME"_standard.out /tmp/"$RAND_FILENAME"_mine.out
rm /tmp/"$RAND_FILENAME"_standard.out
rm /tmp/"$RAND_FILENAME"_mine.out