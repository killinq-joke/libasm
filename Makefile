SRCS	= ft_strlen.s ft_strcpy.s
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
