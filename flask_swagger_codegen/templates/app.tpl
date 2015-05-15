# -*- coding: utf-8 -*-
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow

import {{ model.blueprint }}

# Generally don't use globals, but I'll make an exception for these 3:
_db = None
_ma = None
_app = None


def get_db():
    if _db:
        return _db
    create_app()
    return _db


def get_ma():
    if _ma:
        return _ma
    create_app()
    return _ma


def get_app():
    if _app:
        return _app
    create_app()
    return _app


def create_app():
    global _app
    _app = Flask(__name__)
    _app.register_blueprint(
        v1.bp,
        url_prefix='/v1')
    global _db
    _db = SQLAlchemy(_app)
    global _ma
    _ma = Marshmallow(_app)
    return _app


if __name__ == '__main__':
    get_app().run(debug=True)
