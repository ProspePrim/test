FROM gcc:latest
WORKDIR /usr/src/myapp
RUN apt-get install wget unzip -y && \
        wget https://www.sqlite.org/2018/sqlite-amalgamation-3260000.zip && \
        unzip sqlite-amalgamation-3260000.zip && \
        rm sqlite-amalgamation-3260000.zip && \
        apt remove wget unzip -y
WORKDIR  /usr/src/myapp/sqlite-amalgamation-3260000
RUN gcc shell.c  sqlite3.c -lpthread -ldl  -o sqlite.so