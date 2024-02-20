FROM  seleniarm/standalone-chromium:latest


ENV DEBIAN_FRONTEND noninteractive
RUN pip install --upgrade pip

WORKDIR /app

COPY . /app

USER root
RUN apt-get update && apt-get install python3-distutils python3-pip -y

RUN python3 -m pip install --break-system-packages --no-cache-dir --upgrade --ignore-installed \
    -r /app/data/packages-robot.txt \
    -r /app/data/ide.txt \
    -r /app/data/support_tools.txt

ENTRYPOINT ["robot"]
