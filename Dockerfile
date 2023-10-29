FROM python:3.11-slim
ENV PORT 8080
EXPOSE 8080
WORKDIR /usr/src/app

COPY ./src/ .

RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]