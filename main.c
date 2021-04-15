/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ztouzri <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/12 15:24:04 by ztouzri           #+#    #+#             */
/*   Updated: 2021/04/15 12:37:48 by ztouzri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <stdlib.h>
#include <errno.h>

extern int		ft_strlen(char *);
extern char		*ft_strcpy(char *, const char *);
extern int		ft_strcmp(const char *, const char *);
extern ssize_t	ft_write(int, const void *, size_t);
extern ssize_t	ft_read(int, void *, size_t);
extern char		*ft_strdup(char *);
extern int		ft_indexer(const char, const char *);
extern int		ft_atoi_base(const char *, const char *);

int	main(void)
{
	/*
	static char	s1[BF_SIZE] = "zak le bg";
	static char		s2[] = "zz";
	char			*dup;
	unsigned int	fd;

	errno = 0;
	fd = open("text.txt", O_RDWR);
	printf("ft_strlen(\"%s\") == %d\n", s1, ft_strlen(s1));
	printf("ft_strcmp(\"%s\", \"%s\") == %d vs strcmp == %d\n",
		s1, s2, ft_strcmp(s1, s2), strcmp(s1, s2));
	printf("ft_strcpy(\"%s\", \"%s\") == ", s1, s2);
	ft_strcpy(s1, s2);
	printf("%s\n", s1);
	ft_write(1, "write 14 characteres\n", 21);
	ft_write(fd, "z\n", 2);
	if (errno != 0)
		return (errno);
	ft_read(fd, s1, BF_SIZE);
	if (errno != 0)
		return (errno);
	dup = ft_strdup(s1);
	printf("dup == %s\n", dup);
	printf("%d\n", ft_indexer('w', "sakfwewfew"));*/
	printf("ft_atoi_base == %d\n", ft_atoi_base("ff", "0123456789abcdef"));
	return (0);
}
