# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tcharpen <tcharpen@student.42lyon.fr>      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/12 16:29:21 by tcharpen          #+#    #+#              #
#    Updated: 2023/05/11 13:43:45 by tcharpen         ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

all:
	sudo mkdir -p /home/tcharpen/data/wordpress
	sudo mkdir -p /home/tcharpen/data/mysql
	docker compose -f ./srcs/docker-compose.yml up -d --build

stop:
	docker compose -f ./srcs/docker-compose.yml down

clean: stop
	-docker rmi -f `docker images -qa`
	-docker volume rm -f `docker volume ls -q`
	sudo rm -rf /home/tcharpen/data/wordpress
	sudo rm -rf /home/tcharpen/data/mysql

re: clean all

.PHONY: all stop clean re
