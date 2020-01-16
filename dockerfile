FROM python:3.8-alpine
RUN mkdir /code
COPY requirements.txt /code/
RUN pip install -r /code/requirements.txt
COPY bbc_scrape.py /code/
CMD ["python","/code/bbc_scrape.py"]