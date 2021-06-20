#Base Image
FROM ghcr.io/arghyac35/aria-telegram-mirror-bot:main

WORKDIR /bot/
RUN apk add --no-cache python3 py3-pip
RUN pip3 install flask
RUN pip3 install flask_restful
RUN npm install -g typescript
CMD ["bash", "start.sh"]
