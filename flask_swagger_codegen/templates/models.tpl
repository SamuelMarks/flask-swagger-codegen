# -*- coding: utf-8 -*-

{% include '_do_not_change.tpl' %}

# models are for SQL-alchemy

from marshmallow import fields
from app import db


{%- for name, schema in schemas.iteritems() %}


class {{ name }}(db.Model):
    {%- for n, field in schema.fields.iteritems() %}
    {{n}} = db.Column(db.{{ field }})
    {%- endfor %}

{%- endfor %}

