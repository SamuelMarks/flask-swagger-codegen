# -*- coding: utf-8 -*-
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow

import {{ model.blueprint }}

db = None
ma = None


def create_app():
    app = Flask(__name__)
    app.register_blueprint(
        {{ model.blueprint }}.bp,
        url_prefix='/{{ model.blueprint }}')
    global db
    db = SQLAlchemy(app)
    global ma
    ma = Marshmallow(app)
    return app

if __name__ == '__main__':
    create_app().run(debug=True)
