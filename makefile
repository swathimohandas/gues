readme.md: guessinggame.sh
	echo "The number of lines in the guessinggame program is \n" > readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
	echo "The timestamp is as follows \n" >> readme.md
	date >> readme.md
