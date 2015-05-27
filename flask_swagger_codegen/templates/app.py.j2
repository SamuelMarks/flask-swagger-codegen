# -*- coding: utf-8 -*-

from collections import namedtuple

from flask import Flask, Blueprint
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow

import {{ model.blueprint }}

_last_res = None


def create_app():
    global _last_res
    if _last_res:
        return _last_res
    _app = Flask(__name__)
    _app.register_blueprint(
        {{ model.blueprint }}.bp,
        url_prefix='/v1')
    _db = SQLAlchemy(_app)
    _ma = Marshmallow(_app)

    _last_res = namedtuple('Result', 'app db ma')(_app, _db, _ma)  # Cache
    return _last_res


app, db, ma = create_app()


if __name__ == '__main__':
    app.run(debug=True)
