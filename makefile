#/usr/bin/env bash

all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game by Youssef Dirgham" > README.md
	echo "## The Unix Workbench Course Peer-Graded Assignment" >> README.md
	echo "*By Johns Hopkins University on [coursera.org](https://www.coursera.org/).*" >> README.md
	echo "" >> README.md	
	echo "**Description**: This program, *guessinggame.sh*, continuously asks the user to guess the number of files in the current directory until they guess correctly. The user is informed if their guess is too high or too low. Once they guess the correct number, they are congratulated." >> README.md
	echo "" >> README.md
	echo -n "**Make date**: " >> README.md
	date >> README.md
	echo "" >> README.md
	echo -n "**Number of lines in guessinggame.sh:** " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "" >> README.md
	echo "**Warm Regards,**" >> README.md
	echo "Youssef Dirgham" >> README.md

clean:
	rm README.md

