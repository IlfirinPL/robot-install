FROM python:3.11

WORKDIR /app
ENV DEBIAN_FRONTEND noninteractive


COPY . /app

RUN pip install  -U --upgrade-strategy eager \
    -r /app/packages-robot.txt \
    -r /app/ide.txt \
    -r /app/support_tools.txt

ENTRYPOINT [ "robot"]
