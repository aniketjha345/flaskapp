FROM python:3.12-slim
WORKDIR /usr/src/app
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --n0-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["guicorn", "--bind", "0.0.0.0:5000", "run:app"]
