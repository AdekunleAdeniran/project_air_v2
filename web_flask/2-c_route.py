#!/usr/bin/python3
# Python script that starts a flask application on 0.0.0.0 port 5000/ with
# variables
from flask import Flask
app = Flask(__name__)
app.url_map.strict_slashes = False


@app.route('/')
def hello_world():
    """Python function to print Hello new"""
    return "Hello new!"


@app.route('/new')
def new():
    """Python function to print new"""
    return "new"


@app.route('/c/<var>')
def c_is_fun(var):
    """Python function to print C with directory"""
    return "C " + var.replace('_', ' ')


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
