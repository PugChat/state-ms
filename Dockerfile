FROM python:3.7.4

ENV PYTHONUNBUFFERED 1
RUN mkdir /pugchat-status
WORKDIR /pugchat-status
COPY . /pugchat-status/
RUN pip install -r requirements.txt

EXPOSE 8000
