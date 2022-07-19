FROM ubuntu:22.04
WORKDIR /usr/src/app

COPY data/* ./
RUN apt-get update && apt-get install -y \
    python3-pip \
    python3-pyodbc
RUN pip3 install --no-cache-dir -U pip wheel setuptools
RUN pip3 install --no-cache-dir -U --upgrade-strategy eager \
    -r ./packages-robot.txt \
    -r ./ide.txt

RUN rm -rf /usr/src/app/*

CMD [ "python3", "-m","robot.run","." ]
