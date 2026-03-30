FROM python:3.11-slim
WORKDIR /app
COPY app/requirements.txt .
RUN pip install -r requirements.txt
COPY app/ .
RUN mkdir -p /app/db
CMD ["python", "app.py"]