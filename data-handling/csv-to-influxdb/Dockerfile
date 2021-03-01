FROM python:3.8 

WORKDIR /usr/src/app

RUN curl -o requirements.txt https://raw.githubusercontent.com/fabio-miranda/csv-to-influxdb/master/requirements.txt && \
    python -m pip install -r requirements.txt && \
    curl -o csv-to-influxdb.py https://raw.githubusercontent.com/fabio-miranda/csv-to-influxdb/master/csv-to-influxdb.py

CMD [ "python", "./csv-to-influxdb.py" ]