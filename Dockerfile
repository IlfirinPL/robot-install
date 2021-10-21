FROM ubuntu:20.04
WORKDIR /usr/src/app

COPY data/* ./
RUN apt-get update && apt-get install -y \
    python3-pip
RUN pip3 install --no-cache-dir -U pip wheel setuptools
RUN pip3 install --no-cache-dir -U -r packages.txt
RUN pip3 install --no-cache-dir -U -r packages-robot.txt
RUN pip3 install --no-cache-dir -U -r ide.txt

RUN rm -rf /usr/src/app/*

CMD [ "python", "-m","robot.run","-e","SKIPORTODO","." ]
