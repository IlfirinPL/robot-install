FROM  seleniarm/standalone-chromium:latest


ENV DEBIAN_FRONTEND noninteractive

WORKDIR /app
COPY . /app

USER root


RUN apt-get update && apt-get install python3-distutils python3-pip -y

RUN python3 -m pip install --break-system-packages --no-cache-dir \
    -r /app/data/support_tools.txt \
    -r /app/data/ide.txt \
    -r /app/data/packages-robot.txt

ENTRYPOINT ["python3","-m","robot.run","."]
