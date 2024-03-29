 syntax=docker/dockerfile:1



FROM python:3.8-slim-buster



ENV PIP_ROOT_USER_ACTION=ignore



WORKDIR /python-docker



COPY requirements.txt requirements.txt



RUN pip install --upgrade pip

RUN pip3 install -r requirements.txt



COPY . .



CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
