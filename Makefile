CC = g++
PROJNAME = OffensiveSecurity_Tools
EXT = cpp
CFLAGS = -g -Wall
IFLAGS = -Iinclude
SRC = src
OBJ = obj
BINDIR = bin
BINNAME = $(PROJNAME).exe
BIN = $(BINDIR)/$(BINNAME)
SRCS = $(wildcard $(SRC)/*.$(EXT))
OBJS = $(patsubst $(SRC)/%.$(EXT), $(OBJ)/%.o, $(SRCS))

all: create_dirs
all: $(BIN)

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) $(IFLAGS) $(OBJS) -o $(BIN)

$(OBJ)/%.o: $(SRC)/%.$(EXT)
	$(CC) $(CFLAGS) $(IFLAGS) -c $< -o $@

clean:
	RMDIR /S /Q $(BINDIR) $(OBJ)

create_dirs:
	@IF NOT EXIST $(BINDIR) MD $(BINDIR)
	@IF NOT EXIST $(OBJ) MD $(OBJ)

new: clean
new: all