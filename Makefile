# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ztouzri <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/12 15:24:10 by ztouzri           #+#    #+#              #
#    Updated: 2021/04/14 14:25:31 by ztouzri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
SRCS_BONUS	= ft_atoi_base_bonus.s
OBJS		= $(SRCS:.s=.o)
CC			= gcc
LIB			= libasm.a
EXEC		= test

.s.o:
	nasm -fmacho64 -o $@ $?

$(LIB):	$(OBJS)
	ar rcs $(LIB) $(OBJS)
	
all: 	$(LIB)

#usage of test:
# make test ARGS=20 >> test with BF_SIZE = 20
# make test ARGS=3 >> test with BF_SIZE = 3
test:	$(LIB)
	$(CC) $(CFLAGS) main.c $(LIB) -o $(EXEC) -D BF_SIZE=$(ARGS) && ./$(EXEC)

clean:
	$(RM) $(OBJS) $(EXEC) a.out

fclean: clean
	$(RM) $(LIB)

re: fclean all

.PHONY: test
