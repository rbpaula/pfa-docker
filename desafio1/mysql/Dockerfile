FROM mysql:5.5

COPY ./init-scripts.sql /docker-entrypoint-initdb.d

ENV MYSQL_DATABASE=pfa-docker \
    MYSQL_ROOT_PASSWORD=root

EXPOSE 3306

CMD ["--character-set-server=utf8mb4", "--collation-server=utf8mb4_general_ci", "--skip-character-set-client-handshake"]