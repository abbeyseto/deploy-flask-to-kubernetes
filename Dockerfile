FROM python:stretch

COPY . /app
WORKDIR /app

COPY requirements.txt ./ 

COPY . .

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python", "main.py"]

# CMD ["gunicorn -b :8080 main:APP"]







