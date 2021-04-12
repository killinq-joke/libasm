# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ztouzri <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/12 15:24:10 by ztouzri           #+#    #+#              #
#    Updated: 2021/04/12 18:14:12 by ztouzri          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s
OBJS	= $(SRCS:.s=.o)
CC		= gcc
LIB		= libasm.a
EXEC	= test

.s.o:
	nasm -fmacho64 -o $@ $?

$(LIB):	$(OBJS)
	ar rcs $(LIB) $(OBJS)
	
all: 	$(LIB)

test:	$(LIB)
	$(CC) $(CFLAGS) main.c $(LIB) -o $(EXEC) && ./$(EXEC)

clean:
	$(RM) $(OBJS) $(EXEC) a.out

fclean: clean
	$(RM) $(LIB)

re: fclean all

.PHONY: test
