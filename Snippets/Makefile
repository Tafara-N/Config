# For a simple project with lesser files

CC = gcc
SRC = # .c source files
OBJ = $(SRC:.c=.o)
NAME = # main file name
CFLAGS = -Wall -Werror -Wextra -pedantic

.PHONY: all clean oclean fclean re

all: m.h $(OBJ)
	$(CC) $(OBJ) -o $(NAME)

clean:
	$(RM) *~ $(NAME)

oclean:
	$(RM) $(OBJ)

fclean: clean oclean

re: fclean all

# As the project gets bigger we want to structure and organize our files properly
#
# Make sub-directories in your project directory:
# bin -> Stores executable binary files
# lib -> My own libraries
# obj -> Stores object files (.o)
# src -> Stores source files (.c)
# tests -> Stores unit tests and all tests done
# tests/bin -> Stores our test binary files

# Using Criterion testing framework


CC = gcc
CFLAGS = -g -Wall -Werror -Wextra -pedantic

BIN = $(BINDIR)/main
BINDIR = bin

LFLAGS = -l
LIB = $(LIBDIR)/*
LIBDIR = lib

NAME = # name of main file

OBJ = obj
OBJS = $(patsubst $(SRC)/%.c, $(OBJ)/%.o, $(SRCS))

SUBMITNAME = # Project_name.zip
SRC = src
SRCS = $(wildcard $(SRC)/*.c)

TEST = tests
TESTS = $(wildcard $(TEST)/*.c)
TESTBINS = $(patsubst $(TEST)/%.c, $(TEST)/bin/%, $(TESTS))

.PHONY: all clean oclean fclean re submit

all: $(BIN)

release: # Current flags you're using that are different from the previous version
release: clean
release: $(BIN)

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) $(LFLAGS) $(OBJS) -o $(NAME)

$(OBJ)/%.o: $(SRC)/%.c
	$(CC) $(CFLAGS) $(LFLAGS) -c $< -o $@

$(OBJ):
	mkdir $@

$(LIBDIR):
	mkdir $@

$(TEST)/bin:
	mkdir $@

$(TEST)/bin/%: $(TEST)/%.c
	$(CC) $(CFLAGS) $(LFLAGS) $(OBJS) criterion -c $< -o $@

clean:
	$(RM) -r $(BINDIR)/* $(OBJ)/* $(NAME)

oclean:
	$(RM) $(OBJ)

fclean: clean oclean

re: fclean all

submit:
	$(RM) $(SUBMITNAME)
	zip $(SUBMITNAME) $(BIN)

test: $(LIB) $(TEST)/bin $(TESTBINS)
	for test in $(TESTBINS) ; do ./$$test ; done
