FROM python:3.11-slim
ENV PORT 5000
EXPOSE 5000
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

# ENTRYPOINT ["python"]
# CMD ["app.py"]