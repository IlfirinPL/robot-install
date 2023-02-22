FROM ubuntu:22.04
WORKDIR /usr/src/app

COPY data/* ./

RUN apt-get update && apt-get install -y \
    apt-utils \
    python3-pip \
    python3-pyodbc \
    python3.11

RUN python3.11 -m pip3 install --no-cache-dir -U pip wheel setuptools
RUN python3.11 -m pip3 install --no-cache-dir -U --upgrade-strategy eager \
    -r ./packages-robot.txt \
    -r ./ide.txt \
    -r ./support_tools.txt

RUN rm -rf /usr/src/app/*

CMD [ "python3.11", "-m","robot.run","." ]
