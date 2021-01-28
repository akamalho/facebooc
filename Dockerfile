FROM ubuntu

WORKDIR opt/facebooc

COPY . .

RUN apt-get update
RUN apt-get install -yq build-essential make libsqlite3-dev sqlite3
RUN make all

EXPOSE 16000

cmd bin/facebooc



