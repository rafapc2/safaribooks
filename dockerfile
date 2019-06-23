#!/usr/bin/env docker build --compress -t pvtmert/safaribooks -f

FROM python:3.7.3-alpine3.9 as intermediate

COPY requirements.txt ./

RUN apk add --no-cache python-dev gcc linux-headers libxml2 libxml2-dev libxslt-dev musl-dev && \
    pip3 install --upgrade -r requirements.txt

FROM python:3.7.3-alpine3.9

VOLUME /data/Books
WORKDIR /data

RUN apk add --no-cache libxslt

COPY --from=intermediate /usr/local/lib/python3.7/site-packages /usr/local/lib/python3.7/site-packages
COPY safaribooks.py ./

ENTRYPOINT [ "python3", "safaribooks.py" ]
CMD        [ "--help" ]
