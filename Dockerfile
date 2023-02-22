FROM python:3.11

WORKDIR /app
ENV DEBIAN_FRONTEND noninteractive


COPY * /app

RUN pip install --upgrade pip

RUN pip install --upgrade \
    -r /app/packages-robot.txt \
    -r /app/ide.txt \
    -r /app/support_tools.txt

ENTRYPOINT ["robot"]
