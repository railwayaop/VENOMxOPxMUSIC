



FROM nikolaik/python-nodejs:python3.9-nodejs18

RUN apt-get update -y && apt-get upgrade -y \

    && apt-get install -y --no-install-recommends ffmpeg \

    && apt-get clean \

    && rm -rf /var/lib/apt/lists/*

COPY . /app/

WORKDIR /app/

RUN git clone https://github.com/railwayaop/VENOMxOPxMUSIC/ Carbon

RUN cd Carbon && pip3 install -U -r Installer

CMD cd Carbon && bash start






