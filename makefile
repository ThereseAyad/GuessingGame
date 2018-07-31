all: README.md
README.md: guessinggame.sh
	echo "The title of the game: **Guessing Game**" > README.md
	echo "The date: %day%/%month%/%year%" >> README.md
	echo "The time: %hour%:%minute%:%second%" >> README.md
	echo "The number of lines of code contained in **guessinggame.sh**: **$(wc -l guessinggame.sh)**" >> README.md
clean:
	rm README.md

