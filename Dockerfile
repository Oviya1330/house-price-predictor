# 1. Base image
FROM python:3.11-slim

# 2. Set working directory
WORKDIR /app

# 3. Copy dependency file first (for Docker layer caching)
COPY src/api .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
COPY models/trained/ ./models/trained/
# 5. Expose the application port
EXPOSE 8000 9100

# 7. Run the FastAPI app with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
