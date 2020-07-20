CXX = gcc
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c99

SRC = kilo.c
OBJ = $(SRC:.c=.o)
EXEC = kilo

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) -o $@ $(OBJ) $(LBLIBS)

clean:
	rm -rf $(OBJ) $(EXEC)