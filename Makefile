# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ztouzri <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/12 15:24:10 by ztouzri           #+#    #+#              #
#    Updated: 2021/04/15 12:52:10 by ztouzri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
SRCS_BONUS	= ft_indexer_bonus.s ft_atoi_base_bonus.s
OBJS		= $(SRCS:.s=.o)
BONUS_OBJS	= $(SRCS_BONUS:.s=.o)
CC			= gcc
LIB			= libasm.a
EXEC		= test

.s.o:
	nasm -fmacho64 -o $@ $?

$(LIB):	$(OBJS)
	ar rcs $(LIB) $(OBJS)
	
all: 	$(LIB)

bonus:	$(BONUS_OBJS)
	ar rcs	$(LIB)	$(BONUS_OBJS)

# usage of test:
# make test ARGS=20 >> test with BF_SIZE = 20
# make test ARGS=3 >> test with BF_SIZE = 3
test:	$(LIB)
	$(CC) $(CFLAGS) main.c $(LIB) -o $(EXEC) -D BF_SIZE=$(ARGS) && ./$(EXEC)

tbonus:	all bonus
	$(CC) $(CFLAGS) main.c $(LIB) -o $(EXEC) -D BF_SIZE=$(ARGS) && ./$(EXEC)

clean:
	$(RM) $(OBJS) $(BONUS_OBJS) $(EXEC) a.out

fclean: clean
	$(RM) $(LIB)

re: fclean all

.PHONY: test
