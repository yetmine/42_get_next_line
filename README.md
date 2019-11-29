# get_next_line

The aim of this project was to create a function in C language that returns a line ending with a newline ('\n') or End Of File (EOF), read from a file descriptor. Developed as a part of syllabus of 42 Silicon Valley.

## Installation

Clone the repository to a directory.
```
git clone https://github.com/yetmine/get_next_line.git get_next_line
```
Run make to compile the test program.
```
cd get_next_line && make
```
## Usage

You can run the test program by command
```
./get_next_line example.txt
```
or use function in your program
```
get_next_line(fd, &line)
```
where ```fd``` is a file descriptor and ```line``` is the address of a pointer to char.
Returns ```1```, if line read was successfull, ```0``` if EOF was reached and ```-1``` if there was an error.

## P.S.
**Everything is checked according to norm and moulinette**.
