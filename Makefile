SRCS	= hello.s
OBJS	= $(SRCS:.s=.o)
LIB		= libasm.a

.s.o:
	nasm -f macho64 $(SRCS)

all:	$(OBJS)
	ar rcs $(LIB) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(LIB)

re: fclean all
