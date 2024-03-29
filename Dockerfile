FROM python:3.9.2

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 8501

COPY . .

CMD [ "streamlit", "run" , "index.py" ]