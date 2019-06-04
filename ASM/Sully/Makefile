# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cpieri <cpieri@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/05/31 14:31:44 by cpieri            #+#    #+#              #
#    Updated: 2019/06/04 14:49:11 by cpieri           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	Sully

ASM		=	nasm

ASMF	=	-f macho64

LINK	=	ld

LDF		=	-macosx_version_min 10.8 -lSystem

SRC_PATH=	./

OBJ_PATH=	obj

DEPS =		Makefile

SRC_NAME= 	Sully.s

OBJ_NAME=	$(SRC_NAME:.s=.o)

SRC		=	$(addprefix $(SRC_PATH)/,$(SRC_NAME))

OBJ		=	$(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

NONE = \033[0m
RED = \033[31m
GREEN = \033[32m
YELLOW = \033[33m

.PHONY:	all clean fclean re echo

all:		$(NAME)

$(NAME):	echo $(OBJ)
			@$(LINK) $(OBJ) $(LDF) -o $(NAME)
			@echo "$(GREEN)$(NAME) ready!$(NONE)"

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.s $(DEPS)
			@mkdir $(dir $@) 2> /dev/null || true
			@$(ASM) $(ASMF) $< -o $@

clean:
			@echo "$(YELLOW)Cleaning...$(NONE)"
			@/bin/rm -f $(OBJ)
			@rm -rf $(OBJ_PATH) 2> /dev/null || true

fclean:		clean
			@/bin/rm -f $(NAME)
			@/bin/rm Sully_* 2> /dev/null || true
			@echo "$(RED)$(NAME) deleted !$(NONE)"

re:			fclean all

