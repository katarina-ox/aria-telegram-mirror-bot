#Base Image
FROM ghcr.io/arghyac35/aria-telegram-mirror-bot:main

WORKDIR /bot/
RUN pip3 install flask
RUN pip3 install flask_restful
CMD ["bash", "start.sh"]
