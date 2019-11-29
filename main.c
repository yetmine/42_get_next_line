/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rabduras <rabduras@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/29 14:54:38 by rabduras          #+#    #+#             */
/*   Updated: 2019/11/29 15:05:16 by rabduras         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"
#include <stdio.h>
#include <fcntl.h>

int		main(int ac, char **av)
{
	char	*line;
	int		fd;

	if (ac == 2)
	{
		fd = open(av[1], O_RDONLY);
        line = NULL;
        while (get_next_line(fd, &line) > 0)
            ft_putendl(line);
	}
	return (0);
}