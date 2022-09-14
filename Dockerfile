#baseımage oluşturuyor.
FROM python:3.9 

#uygulama için directory oluşturuyor
WORKDIR /app
#mkdir
#cd
#bağımlılıkları indiriyor
COPY requirements.txt .
#nereye atıyor
#cacheliyor bellekte tutuluyor sonrasında siliyor.
RUN pip install -r requirements.txt

# #benim kodumu kopyalıyor
COPY /app .

ENV portname=5000
EXPOSE ${portname}
# #uygulamayı çalıştırıyor
CMD ["python", "multi.py"]
