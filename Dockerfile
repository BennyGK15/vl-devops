LABEL maintainer="Benjamin Esenwein inf20074@lehre.dhbw-stuttgart.de"
LABEL description="This is a Python Project as a web application powered by flask"

FROM python:3.9.2

EXPOSE 5000

ENV PYTHONDONTWRITEBYTECODE=1

COPY requirements.txt .
RUN python -m pip install requirements.txt

WORKDIR /app
COPY . /app

CMD [ "python", "-m", "flask", "run", "--host=0.0.0.0"]