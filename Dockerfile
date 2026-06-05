FROM python:3.11

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD voila "Football Prediction (Test 2).ipynb" \
    --port=${PORT:-8866} \
    --no-browser \
    --Voila.ip=0.0.0.0
