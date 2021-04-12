#include <stdio.h>
#include <stdio.h>

extern int	ft_strlen(char *);
extern char	*ft_strcpy(char *, const char *);
extern char	*ft_strcpy(char *, const char *);
int main()
{
	char s1[] = "wwww";
	char s2[] = "srccc";

	printf("ft_strlen(\"%s\") == %d\n", s1, ft_strlen(s1));
	printf("ft_strcpy(\"%s\", \"%s\") == ", s1, s2);
	ft_strcpy(s1, s2);
	printf("%s\n", s1);

	return (0);
}
