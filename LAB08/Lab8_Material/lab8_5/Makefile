
# Makefile: Lab8 - P5 (binariza 2)

# Build the "lab8_5" executable (default rule)
lab8_5: main.o bin_img.o
	gcc main.o bin_img.o -o lab8_5

# Compile only main.c
main.o: main.c
	gcc -c main.c -o main.o

# Compile only bin_img.s
bin_img.o: bin_img.s
	gcc -c bin_img.s -o bin_img.o

# delete all object files and executable
clean:
	rm *.o lab8_5
