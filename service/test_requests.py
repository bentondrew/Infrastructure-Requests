from flask import Flask
app = Flask(__name__)


@app.route('/')
def index():
  import Requests
  return 'Requests version installed: {}'.format(Requests.__version__)
