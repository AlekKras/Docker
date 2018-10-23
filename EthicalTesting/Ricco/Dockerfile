FROM ubuntu
LABEL Aleksandr Krasnov "alekforwork@gmail.com"
RUN apt-get update && apt-get install -y git && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN git clone https://github.com/shrkwv/ricco.git
RUN apt-get update -y && \
    apt-get install python3 -y && \
    apt-get install python-pip -y

