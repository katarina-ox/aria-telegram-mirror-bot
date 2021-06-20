#Base Image
FROM ghcr.io/arghyac35/aria-telegram-mirror-bot:main

WORKDIR /bot/
RUN rm /bot/start.sh
COPY ./start.sh /bot/start.sh
COPY ./clever.py /bot/clever.py
RUN apk add --no-cache python3 py3-pip
RUN pip3 install flask
RUN pip3 install flask_restful
CMD ["bash", "start.sh"]
