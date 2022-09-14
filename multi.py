from flask import Flask
import os

portname = os.environ.get('portname')
print(os.environ.get('portname'))

app = Flask(__name__)
@app.route('/')
def myapi():

    portname = os.environ.get('portname')
    print(os.environ.get('portname'))
    return "şu portta açıldı " + portname

app.run(host='0.0.0.0',port=portname)
