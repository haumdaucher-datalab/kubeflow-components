FROM python:3.8-slim

WORKDIR /usr/src/app/
COPY . .
RUN python -m pip install --upgrade pip && \
    python -m pip install -r requirements.txt && \
    chmod u+x send_telegram.sh


ENTRYPOINT ["./send_telegram.sh"]