# Dockerfile to build a flask app

# all rhis commands is used to build the image

#

FROM python:3.9

# means every change i will do it will be in /usr/app

#my current position

WORKDIR /user/app/



COPY requirements.txt .



RUN pip install -r requirements.txt



COPY . .

EXPOSE 5000



CMD ["python", "app.py"]
