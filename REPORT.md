# Simple Docker

Введение в докер. Разработка простого докер образа для собственного сервера.

## Часть 1

- Скачиваем образ nginx

![part1](part1/pull_nginx.png)

- Проверяем наличие образа

![part1](part1/check_nginx.png)

- Запускаем nginx

![part1](part1/run_nginx.png)

- Проверяем что nginx запущен

![part1](part1/check_run_nginx.png)

- Инспектируем докер контейнер. Айпи: 172.17.0.2, Порты: ExposedPorts: 80/tcp: {}, размер: 67108864

![part1](part1/inspect_nginx_1.png) \
![part1](part1/docker_inspect_2.png) \
![part1](part1/docker_inspect_3.png)

- Останавливаем контейнер

![part1](part1/stop_nginx.png)

- Проверяем что контейнер остановился

![part1](part1/check_stop_nginx.png)

- Запускаем докер с маппингом

![part1](part1/mapping_nginx.png)

- Контейнер работает

![part1](part1/mapping_proof_nginx.png)

- Перезапускаем контейнер

![part1](part1/mapping_restart.png)

- Контейнер перезапустился

![part1](part1/mapping_restarted.png)


## Часть 2. Читаем конфиг

- Читаем конфиг nginx

![part2](part2/reading_nginx_conf.png)

- Создаем файл nginx конфига

![part2](part2/create_nginx_conf.png)

- Конфиг чтобы отдавать статус

![part2](part2/nginx_conf.png)

- Копируем конфиг в контейнер

![part2](part2/copy_config.png)

- Перезапускаем nginx контейнер

![part2](part2/restart_nginx.png)

- Страничка отдается

![part2](part2/proof.png)

- Экспортируем контейнер

![part2](part2/export_container.png)

- Останавливаем контейнер

![part2](part2/stop_docker.png)

- Удаляем образ

![part2](part2/remove_nginx.png)

- Удаляем остановленный контейнер

![part2](part2/remove_container.png)

- Импортируем контейнер

![part2](part2/import_container.png)

- Запускаемем контейнер

![part2](part2/run_imported.png)

- Всё работает

![part2](part2/proof_imported.png)



