#!/usr/bin/env

fileCount=$(ls | wc -l)

function guessFileCount()
{
	read guessNum

	if [[ $guessNum -eq $fileCount ]]
	then
		echo "Corretly guessed the files count in the directory!"
		echo "Below is the list of files:"
                echo "---------------------------"

		for fCount in $(ls)
		do
			echo $fCount
		done

		echo "<<<<<<<<<<<<<< GUESSING GAME END >>>>>>>>>>>>>>>"
	else
		if [[ $guessNum -gt $fileCount ]]
		then
			echo "Guess number is more than the files count. Please Re-enter:"
			guessFileCount
		else
			
			echo "Guess number is less than the files count. Please Re-enter:"
			guessFileCount
		fi
	fi
}

echo "<<<<<<<<<<<<<< GUESSING GAME START >>>>>>>>>>>>>>>"
echo "Enter a number to guess the no. of files present in the current directory:"

guessFileCount
