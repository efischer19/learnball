FROM python:3
ENV PYTHONUNBUFFERED 1
RUN apt-get update && apt-get install -y mysql-client && rm -rf /var/lib/apt
RUN mkdir /code
WORKDIR /code
ADD * /code/
RUN pip install -r requirements.txt
