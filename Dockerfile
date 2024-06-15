FROM python:3.9-slim

WORKDIR /app

COPY . .

RUN apt-get update && apt-get upgrade -y && \
    pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

ENV DB_USER=db_user
ENV DB_PASS=dv_password
ENV DB_HOST=tempconverter-db
ENV DB_NAME=tempconverter_db
ENV STUDENT="Valentin Hervé"
ENV COLLEGE=Algebra

CMD ["python", "app.py"]

