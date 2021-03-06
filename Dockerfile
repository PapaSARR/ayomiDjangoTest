FROM python:3.7.4
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ADD . /code/
RUN pip install --upgrade pip && pip install -r requirements.txt
RUN pip install mysqlclient
COPY . /code/