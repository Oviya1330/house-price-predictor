FROM python:3.9-slim
WORKDIR /app
COPY app.py requirements.txt .
 
 # 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.address=0.0.0.0"]