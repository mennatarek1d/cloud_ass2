FROM python
WORKDIR /app1
COPY work.py /app1/
COPY paragraphs.txt /app1/
RUN pip install nltk
RUN python -m nltk.downloader stopwords punkt
CMD ["python", "work.py"]