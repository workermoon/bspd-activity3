FROM python:3.10

WORKDIR /app
COPY . .

RUN pip install --trusted-host pypi.org -r requirements.txt
CMD [ "python","app.py" ]