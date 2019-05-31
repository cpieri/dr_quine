# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cpieri <cpieri@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/31 14:31:44 by cpieri            #+#    #+#              #
#    Updated: 2019/05/31 14:32:09 by cpieri           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	Colleen

CC		=	clang

CFLAGS	=	-Wall -Wextra -Werror

SRC_PATH=	./

OBJ_PATH=	obj

DEPS =		Makefile

SRC_NAME= 	Colleen.s

OBJ_NAME=	$(SRC_NAME:.c=.o)

SRC		=	$(addprefix $(SRC_PATH)/,$(SRC_NAME))

OBJ		=	$(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

NONE = \033[0m
RED = \033[31m
GREEN = \033[32m
YELLOW = \033[33m

.PHONY:	all clean fclean re echo

all:		$(NAME)

$(NAME):	echo $(OBJ)
			@$(CC) $(CFLAGS) -o $(NAME) $(OBJ)
			@echo "$(GREEN)$(NAME) ready!$(NONE)"

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.c $(DEPS)
			@mkdir $(dir $@) 2> /dev/null || true
			@$(CC) $(CFLAGS) -c $< -o $@

clean:
			@echo "$(YELLOW)Cleaning...$(NONE)"
			@/bin/rm -f $(OBJ)
			@rm -rf $(OBJ_PATH) 2> /dev/null || true

fclean:		clean
			@/bin/rm -f $(NAME)
			@echo "$(RED)$(NAME) deleted !$(NONE)"

re:			fclean all

