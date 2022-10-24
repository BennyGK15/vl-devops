LABEL maintainer="Benjamin Esenwein inf20074@lehre.dhbw-stuttgart.de"

FROM python:3.9.2

EXPOSE 5000

ENV PYTHONDONTWRITEBYTECODE=1

COPY requirements.txt .
RUN python -m pip install requirements.txt

WORKDIR /app
COPY . /app

CMD [ "python", "-m", "flask", "run", "--host=0.0.0.0"]