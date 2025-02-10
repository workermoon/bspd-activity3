FROM python:3.9-slim
 
WORKDIR /app
COPY . .
 
RUN apt-get update && apt-get install -y ca-certificates && update-ca-certificates
RUN pip install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org -r requirements.txt
 
 
RUN pip install -r requirements.txt
CMD [ "python", "app.py" ]