FROM ubuntu:20.04
WORKDIR /usr/src/app

COPY data/* ./
RUN py -3.9 -m pip install --no-cache-dir -U pip wheel setuptools
RUN py -3.9 -m pip install --no-cache-dir -U -r packages.txt
RUN py -3.9 -m pip install --no-cache-dir -U -r packages-robot.txt
RUN py -3.9 -m pip install --no-cache-dir -U -r ide.txt

RUN rm -rf /usr/src/app/*

CMD [ "py", "-3.9", "-m","robot.run","-e","SKIPORTODO","." ]
