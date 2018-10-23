FROM ubuntu
LABEL Aleksandr Krasnov "alekforwork@gmail.com"
RUN apt-get update && apt-get install -y git && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN git clone https://github.com/UltimateHackers/Striker
RUN apt-get update -y && \
    apt-get install python3 -y && \
    apt-get install python-pip -y
RUN cd Striker/ && pip install -r requirements.txt



