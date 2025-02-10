from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "My Little Pony"

@app.route('/page1')
def page1():
    return "Friendship is magic"

if __name__=='__main__':
    app.run(host='0.0.0.0',port=5000)