FROM python:3

WORKDIR /api
COPY . .
RUN python -m pip install --upgrade pip
RUN pip install flask fastapi uvicorn python-multipart

ENV api_url="http://127.0.0.1:8000"

ENTRYPOINT flask run --host 0.0.0.0