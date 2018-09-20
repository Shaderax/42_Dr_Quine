# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nrouzeva <nrouzeva@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/02 09:31:46 by nrouzeva          #+#    #+#              #
#    Updated: 2018/09/20 18:42:11 by nrouzeva         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Grace

SRC_PATH = .
OBJ_PATH = obj

SRC_NAME = Grace.c

OBJ_NAME = $(SRC_NAME:.c=.o)

CC = gcc
CFLAGS = -Wextra -Wall -Werror -O2 #-fsanitize=address -fsanitize=undefined

RED=\033[1;31m
GREEN=\033[1;32m
NC=\033[0m

SRC = $(addprefix $(SRC_PATH)/,$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

.PHONY: all, clean, fclean, re

all: $(NAME)

$(NAME): $(OBJ)
	@$(CC) $^ -o $@

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c Makefile
	@mkdir $(OBJ_PATH) 2> /dev/null || true
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "$(GREEN)[✓]$(NC) Source compiled : $<"

clean:
	@rm -f $(OBJ)
	@rmdir $(OBJ_PATH) 2> /dev/null || true
	@echo "$(RED)[-]$(NC) Objects cleaned"

fclean: clean
	@rm -rf $(NAME)
	@rm -rf Grace_kid.c
	@echo "$(RED)[-]$(NC) Program clear"

re:fclean
	@make
