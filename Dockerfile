FROM python:3.11


ENV DEBIAN_FRONTEND noninteractive
RUN pip install --upgrade pip

WORKDIR /app

COPY . /app

RUN pip install --upgrade \
    -r /app/data/packages-robot.txt \
    -r /app/data/ide.txt \
    -r /app/data/support_tools.txt

ENTRYPOINT ["robot"]
