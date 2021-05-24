FROM python:3.8-slim

WORKDIR /usr/src/app/
COPY ./requirements.txt .
RUN python -m pip install --upgrade pip && python -m pip install -r requirements.txt
COPY send_telegram.py .

# Syntax check
RUN python -m py_compile send_telegram.py

CMD ["python","./send_telegram.py"]