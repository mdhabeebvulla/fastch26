FROM python:3.9-slim
WORKDIR /app
COPY requirements.txt .
COPY mymodel .
COPY main1.py .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["uvicorn","main1:app","--host","0.0.0.0","--port","8000"]
