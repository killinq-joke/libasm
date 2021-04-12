SRCS	= ft_strlen.s
OBJS	= $(SRCS:.s=.o)
CC		= gcc
LIB		= libasm.a
EXEC	= test

.s.o:	$(SRCS)
	nasm -f macho64 $(SRCS)

$(LIB):	$(OBJS)
	ar rcs $(LIB) $(OBJS)
	
all: 	$(LIB)

test:	$(LIB)
	$(CC) $(CFLAGS) main.c $(LIB) -o $(EXEC) && ./$(EXEC)

clean:
	$(RM) $(OBJS) $(EXEC)

fclean: clean
	$(RM) $(LIB)

re: fclean all

.PHONY: test
