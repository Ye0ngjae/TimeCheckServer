from flask import Flask, render_template, request, redirect, url_for, flash
import time
from datetime import datetime
import json


app = Flask(__name__)

def return_json_time():
    time_json = {
    "date": time.strftime("%Y-%m-%d"),
    "time": time.strftime("%H:%M:%S")
    }
    return json.dumps(time_json)

@app.route('/')
def index():
    current_time = datetime.now().isoformat()
    print(current_time)
    return render_template('index.html', current_time=current_time)

@app.route('/', methods=['POST'])
def index_time():
    if request.method == 'POST':
        return return_json_time()
    
if __name__ == '__main__':
    app.run(debug=False, port=5000)