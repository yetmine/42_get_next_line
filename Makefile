# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rabduras <rabduras@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/29 19:41:05 by kgavrilo          #+#    #+#              #
#    Updated: 2019/11/29 15:00:43 by rabduras         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = get_next_line
FLAGS = -Wall -Wextra -Werror
SRC = main.c get_next_line.c
LIBFT = libft/

OBJ = $(SRC:.c=.o)

%.o: %.c
	gcc -c -o $@ $< $(FLAGS)

all: $(NAME)

$(NAME): $(OBJ)
	make -C $(LIBFT)
	gcc $(OBJ) -o $(NAME) -L libft -lft

clean:
	rm -f $(OBJ)
	make -C $(LIBFT) clean

fclean: clean
	rm -f $(NAME)
	make -C $(LIBFT) fclean

re:	fclean all
