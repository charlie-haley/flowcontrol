FROM docker:dind

RUN apk add curl
RUN curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sh
RUN echo "-P ubuntu-latest=catthehacker/ubuntu:act-20.04" >> ~/.actrc

WORKDIR /project

CMD /bin/sh -c "act -n > /logs/dry-run.log; act > /logs/run.log"