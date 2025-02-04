FROM python:3.8-alpine


COPY ./techtrends/ /app/

WORKDIR /app

RUN pip install -r requirements.txt
RUN python init_db.py

EXPOSE 3111

ENTRYPOINT [ "python" ]
CMD ["app.py"]