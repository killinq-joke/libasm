/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ztouzri <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/12 15:24:04 by ztouzri           #+#    #+#             */
/*   Updated: 2021/04/13 14:55:54 by ztouzri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <stdlib.h>

extern int		ft_strlen(char *);
extern char		*ft_strcpy(char *, const char *);
extern int		ft_strcmp(const char *, const char *);
extern ssize_t	ft_write(int, const void *, size_t);
extern ssize_t	ft_read(int, void *, size_t);
extern char		*ft_strdup(char *);

int main()
{
	char	s1[BF_SIZE] = "wwww";
	char	s2[] = "zz";
	int		fd = open("main.c", O_RDONLY);

	printf("ft_strlen(\"%s\") == %d\n", s1, ft_strlen(s1));
	printf("ft_strcmp(\"%s\", \"%s\") == %d vs strcmp == %d\n", s1, s2, ft_strcmp(s1, s2), strcmp(s1, s2));
	printf("ft_strcpy(\"%s\", \"%s\") == ", s1, s2);
	ft_strcpy(s1, s2);
	printf("%s\n", s1);
	ft_write(1, "write 14 characteres\n", 21);
	ft_read(fd, s1, BF_SIZE);
	ft_write(1, s1, ft_strlen(s1) - 1);
	char	*dup = ft_strdup(s1);
	printf("dup == %s\n", dup);
	return (0);
}
