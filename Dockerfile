FROM python:3.8

ENV WORKDIR=/app

WORKDIR ${WORKDIR}

COPY ./requirements.txt ${WORKDIR}

RUN pip install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install -r requirements.txt

COPY . ${WORKDIR}

EXPOSE 8000

CMD ["python3","manage.py","runserver","0.0.0.0:8000"]
