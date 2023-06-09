FROM python:3.9
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY r.txt /app/r.txt
COPY . /app
RUN pip install -r r.txt
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
EXPOSE 8000