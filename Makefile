NAME		:= tic_tac_toe

INCLUDES	:= -I ./includes/ -I ./libft/

CFLAGS		:= -Wall -Wextra -Werror

CPPFLAGS	:= $(INCLUDES)

SRCS		:= main.c

all: $(SRCS) ./includes
	make -C ./libft/
	cc $(CFLAGS) $(CPPFLAGS) $(SRCS) -o $(NAME)
	clear
	@printf("\e[38;5;7mReady\e[0m")

clean:
	$(RM) $(NAME)

re: clean all

.PHONY: all clean re