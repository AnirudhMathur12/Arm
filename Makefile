SRC = main.s
APP = main

#compile:
#	as $(SRC) -o $(APP).o

#link:
#	ld $(APP).o -o $(APP) -lSystem -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib

#run:
#	./$(APP)

main: main.o
	ld main.o -o main -lSystem -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib

main.o: $(SRC)
	as $(SRC) -o main.o

clean:
	rm main.o main

build:
	make compile
	make link
	make run
