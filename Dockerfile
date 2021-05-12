FROM mariadb:10.4

RUN apt update \
    && apt install mariadb-plugin-mroonga \
    && apt clean \
    && rm -rf /var/lib/apt/lists/* \
    && ln -s /usr/share/mysql/mroonga/install.sql /docker-entrypoint-initdb.d
