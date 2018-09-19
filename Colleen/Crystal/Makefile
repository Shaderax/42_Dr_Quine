# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nrouzeva <nrouzeva@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/05/02 09:31:46 by nrouzeva          #+#    #+#              #
#    Updated: 2018/09/19 19:50:18 by nrouzeva         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = Colleen

SRC_PATH = .
OBJ_PATH = obj

SRC_NAME = Colleen.cr

OBJ_NAME = $(SRC_NAME:.cr=.o)

CC = crystal 
CFLAGS = build

RED=\033[1;31m
GREEN=\033[1;32m
NC=\033[0m

SRC = $(addprefix $(SRC_PATH)/,$(SRC_NAME))
OBJ = $(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

.PHONY: all, clean, fclean, re

all: $(NAME)

$(NAME): Makefile
	@$(CC) $(CFLAGS) $^ -o $@
	@echo "$(GREEN)[✓]$(NC) Source compiled : $<"

clean:
	@rm -f $(OBJ)
	@rmdir $(OBJ_PATH) 2> /dev/null || true
	@echo "$(RED)[-]$(NC) Objects cleaned"

fclean: clean
	@rm -rf $(NAME)
	@echo "$(RED)[-]$(NC) Program clear"

re:fclean
	@make
