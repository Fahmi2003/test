FROM movecrew/one4ubot:alpine-latest

RUN mkdir /Test && chmod 777 /Test
ENV PATH="/Test/bin:$PATH"
WORKDIR /Test

RUN git clone https://github.com/Fahmi2003/Test -b sql-extended /One4uBot

#
# Copies session and config(if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /One4uBot/

#
# Finalization
#
CMD ["python3","-m","userbot"]
