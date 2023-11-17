FROM python:3.8-slim-buster

WORKDIR /app
COPY requirements.txt .
ENTRYPOINT pip install -r requirements.txt
COPY . .
EXPOSE 5001:5001
CMD ["python", "app.py"]
