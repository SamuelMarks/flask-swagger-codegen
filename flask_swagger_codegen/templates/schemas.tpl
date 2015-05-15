# -*- coding: utf-8 -*-

{% include '_do_not_change.tpl' %}

from app import get_ma
from models import {{', '.join(schemas.keys())}}


ma = get_ma()

{%- for name, schema in schemas.iteritems() %}


class {{ name }}Schema(ma.ModelSchema):
    class Meta:
        model = {{name}}

{%- endfor %}
