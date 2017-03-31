from flask import Flask
app = Flask(__name__)


@app.route('/')
def index():
  import requests
  return 'Requests version installed: {}'.format(requests.__version__)
