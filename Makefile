NASM_32 = nasm -f elf32
NAME = libasm.a
SRC = $(wildcard src/*.s)
OBJ = $(SRC:.s=.o)

all: $(NAME)

%.o: %.s
	@echo "\033[38;5;82m[\033[94m+\033[38;5;82m] Creation of the object \033[38;5;226m$< \033[32;5;85m -> \033[38;5;226m $@ \033[00m"
	@$(NASM_32) -o $@ $<

$(NAME): $(OBJ)
	@echo "\033[38;5;82m[\033[94m+\033[38;5;82m] Compile \033[38;5;226m$< \033[32;5;85m -> \033[38;5;226m $@ \033[00m"
	@ar rc -o $@ $^

clean: $(OBJ)
	@echo "\033[38;5;82m[\033[94m+\033[38;5;82m] Cleaning \033[38;5;226m$^ \033[32;5;85m\033[00m"
	@rm $^