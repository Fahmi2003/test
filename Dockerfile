FROM movecrew/one4ubot:alpine-latest

RUN mkdir /test && chmod 777 /test
ENV PATH="/test/bin:$PATH"
WORKDIR /test

RUN git clone https://github.com/Fahmi2003/test -b sql-extended /One4uBot

#
# Copies session and config(if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /test/

#
# Finalization
#
CMD ["python3","-m","userbot"]
