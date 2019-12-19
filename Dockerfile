FROM python:3.7.4

ENV PYTHONUNBUFFERED 1
RUN mkdir /pugchat-status
WORKDIR /pugchat-status
COPY . /pugchat-status/
RUN pip install -r requirements.txt
CMD ["bash","-c","python pugchat-status/manage.py runserver 0.0.0.0:8000 && sleep 40 && cd pugchat-status && python manage.py migrate"]
#CMD ["python","pugchat-status/manage.py","runserver","0.0.0.0:8000"]
EXPOSE 8000
