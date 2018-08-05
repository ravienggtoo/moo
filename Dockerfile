# Comments by dev2

FROM python:3.6-alpine

ENV VENV=/app

COPY app ${VENV}/app

RUN  apk update --no-cache && apk add --no-cache sqlite \
     && rm -rf /var/cache/apk/* \
     && addgroup -S app && adduser -S -G app app  \
     && python -m venv ${VENV} \
     && ${VENV}/bin/pip install  -r ${VENV}/app/requirements.txt \
     && chmod -R 755 ${VENV}  && chown -R app:app ${VENV}/app

EXPOSE 5000

WORKDIR ${VENV}/app

ENV FLASK_APP=${VENV}/app/app.py

USER app

CMD ["/app/bin/python", "app.py"]
