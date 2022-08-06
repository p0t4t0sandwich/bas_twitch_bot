FROM python:3.8-alpine
COPY ./requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt && mkdir /bas_twitch_bot
COPY ./code /app
ENV TWITCH_BOT_TOKEN="" MYSQL_USER="" MYSQL_PASSWORD="" MYSQL_HOST="" MYSQL_DATABASE=""
ENTRYPOINT [ "python" ]
CMD [ "bas_twitch_bot.py" ]