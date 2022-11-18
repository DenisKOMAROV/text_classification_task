FROM nvidia/cuda:11.8.0-runtime-ubuntu22.04
FROM python:3.9-bullseye


RUN apt-get -y install python3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# JUPYTER_LAB
WORKDIR /app

# Настройка файла запуска jupyterlab
RUN mkdir -m777 -p /app

# jupyter port
ARG PORT
ENV PORT ${PORT}

EXPOSE ${PORT}

RUN rm -rf /tmp
RUN rm -rf /root/.cache

# Jupyter dark theme
RUN mkdir -p /root/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/ && \
   echo '{ "theme": "JupyterLab Dark" }' > /root/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/themes.jupyterlab-settings


ENTRYPOINT jupyter lab -p ${PORT}:${PORT} --allow-root --ip=0.0.0.0
