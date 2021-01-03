FROM gcc:latest
ENTRYPOINT /usr/src/myapp
RUN apt-get install wget && \
        wget https://www.sqlite.org/2018/sqlite-amalgamation-3260000.zip && \
        apt-get install unzip && \
        unzip sqlite-amalgamation-3260000.zip && \
        rm sqlite-amalgamation-3260000.zip \
	apt del del wget unzip
WORKDIR  /usr/src/myapp/sqlite-amalgamation-3260000
RUN gcc shell.c  sqlite3.c -lpthread -ldl  -o sqlite.so
