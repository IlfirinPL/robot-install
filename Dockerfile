FROM python:3.11

WORKDIR /app
ENV DEBIAN_FRONTEND noninteractive


COPY . /app

RUN pip install --upgrade pip

RUN pip install --upgrade \
    -r /app/data/packages-robot.txt \
    -r /app/data/ide.txt \
    -r /app/data/support_tools.txt

ENTRYPOINT ["robot"]
