##
## EPITECH PROJECT, 2021
## Makefile
## File description:
## MyProject Makefile
##

#=======================
# * ... Paths, filenames
#=======================

NAME				=	my_project
LIB					=	libmy.a

#=======================
# * ... Flags
#=======================

MAKEFLAGS			=	--silent
LDFLAGS				=	-L./mylib/ -lmy
CFLAGS				=	-Wall -Wextra -g3

# * ... Lib Headers
CPPFLAGS			=	-I./mylib/headers/							\
						-I./mylib/headers/ascii/					\
						-I./mylib/headers/maths/					\
						-I./mylib/headers/optflags/					\
						-I./mylib/headers/ptr/						\
						-I./mylib/headers/two_dims_arrays/

# * ... Lib modules
CPPFLAGS			+=	-I./mylib/headers/ascii/modules/			\
						-I./mylib/headers/maths/modules/			\
						-I./mylib/headers/ptr/modules/				\
						-I./mylib/headers/two_dims_arrays/modules/

SRC					=	project/main.c

OBJ					=	$(SRC:.c=.o)

RM_OBJ				=	@rm -f $(OBJ)

CC					=	gcc

#=======================
# * ... Recipes
#=======================

.PHONY: all clean fclean re

$(NAME):	$(OBJ) $(LIB)
			$(CC) -o $(NAME) $(OBJ) $(LDFLAGS)

$(LIB):
			make -C mylib/

all:	$(NAME)

clean:
			$(RM_OBJ)
			make -C mylib/ fclean

fclean:		clean
			@rm -f $(NAME)

re: 		fclean all
