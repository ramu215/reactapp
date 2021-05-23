FROM python:3.7-alpine
  
RUN apk add --no-cache gcc musl-dev linux-headers
RUN pip install flask redis
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0
COPY app.py app.py
CMD ["flask", "run"]