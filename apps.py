from flask import Flask
import json
app = Flask(__name__)


with open("/apps.json",'r') as f:
    datastore = json.load(f)

@app.route('/')
def hello():
    return "{0}".format(datastore)

if __name__ == '__main__':
    app.run(host='0.0.0.0')
