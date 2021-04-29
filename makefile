readme : guessingGame.sh
	touch README.md
	echo "Title of the project: Peer-graded Assignment: Bash, Make, Git, and GitHub (Guessing Game)\n" > README.md
	echo "make ran at date : " >> README.md
	date >> README.md
	echo "\nTotal lines of code in the file guessinggame.sh is : " >> README.md
	cat guessingGame.sh | wc -l >> README.md
