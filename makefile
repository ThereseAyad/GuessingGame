all: README.md
README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "This is a funny game. You can download *guessinggame.sh* file, then go to its directory and type in terminal **$ bash guessinggame.sh**" >> README.md
	echo "Then you can guess the number of the files inside this directory till you get the right guess" >> README.md 
	echo "- Date and Time at which make command was run:" >> README.md
	date >> README.md
	echo "- The number of lines of code contained in **guessinggame.sh**:" >> README.md
	wc -l < guessinggame.sh >> README.md
clean:
	rm README.md


