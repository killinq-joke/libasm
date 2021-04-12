/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ztouzri <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/04/12 15:24:04 by ztouzri           #+#    #+#             */
/*   Updated: 2021/04/12 18:17:50 by ztouzri          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

extern int		ft_strlen(char *);
extern char		*ft_strcpy(char *, const char *);
extern int		ft_strcmp(const char *, const char *);
extern ssize_t	ft_write(int, const void *, size_t);
extern ssize_t	ft_read(int, void *, size_t);

int main()
{
	char s1[] = "wwww";
	char s2[] = "zz";

	printf("ft_strlen(\"%s\") == %d\n", s1, ft_strlen(s1));
	printf("ft_strcmp(\"%s\", \"%s\") == %d vs strcmp == %d\n", s1, s2, ft_strcmp(s1, s2), strcmp(s1, s2));
	printf("ft_strcpy(\"%s\", \"%s\") == ", s1, s2);
	ft_strcpy(s1, s2);
	printf("%s\n", s1);
	ft_write(1, "write 14 characteres\n", 21);
	ft_read(0, s1, 128);
	ft_write(1, s1, ft_strlen(s1));
	return (0);
}
