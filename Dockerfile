FROM ubuntu:22.04

RUN apt-get -y update
RUN apt-get install -y wget python3 python3-pip
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - 
RUN echo "deb [arch=amd64]  http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
RUN apt-get -y update
RUN pip3 install flask

COPY ./ /app

WORKDIR /app

ENTRYPOINT ["python3", "app.py"]