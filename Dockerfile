#Base Image
FROM ghcr.io/arghyac35/aria-telegram-mirror-bot:main

WORKDIR /bot/
RUN rm /bot/start.sh
COPY ./start.sh /bot/start.sh
COPY ./clever.py /bot/clever.py
RUN apk add nginx
RUN npm install http-server -g
CMD ["bash", "start.sh"]
