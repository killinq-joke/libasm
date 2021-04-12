#include <stdio.h>

extern int	ft_strlen(char *);
int main()
{
	char *s = "1234567";
	printf("%s len == %d\n", s, ft_strlen(s));
	return (0);
}
