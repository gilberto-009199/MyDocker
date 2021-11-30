FROM debian
MAINTAINER Gilberto Ramos de Oliveira <gilberto.tec@vivaldi.net>
RUN apt-get update && apt-get install -y build-essential nano apt-utils gpg && apt-get clean
RUN echo "Iniciando a Instalação dos Serviços"
RUN apt-get install -y apache2 php7.0 |nl  && apt-get clean
RUN echo "Iniciando a Instalação do TOR"
RUN apt-get install -y tor|nl && apt-get clean
RUN echo "Atenção!! O pat de segurança para o php.ini e o apache.conf \n Ainda não foi Implementado"
RUN echo "Noticia!! O programa gerenciador de serviços logo será implementado"
ENV APACHE_LOCK_DIR="/var/lock"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"
ADD  https://c83.pcloud.com/dpZR1j5CpZCEvLUpZzycIZZcUG7I7Z2ZZdjRZZafLPYuT6HFkjX9AzEEgqHY5tozYX/index.html /var/www/html
LABEL Description="WebserverTor - Debian+apache2+php7+torRelay"
EXPOSE 80
RUN chown -R www-data: /var/www/html/.
CMD /etc/init.d/apache2 start && /bin/bash echo "Instalação Finalizada!! Não se esqueça de salvar a chave private.key!!"  && /bin/bash
