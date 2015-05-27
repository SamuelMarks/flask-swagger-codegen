# -*- coding: utf-8 -*-
import os
from jinja2 import Environment, FileSystemLoader


class Generator(object):
    def __init__(self, model):
        super(Generator, self).__init__()
        self.model = model
        loader = FileSystemLoader(
            os.path.join(os.path.dirname(__file__), 'templates'))
        self.env = Environment(loader=loader)

    def render(self, template, *args, **kwargs):
        template = self.env.get_template(template)
        return template.render(*args, **kwargs)

    def generate_requirements(self):
        return self.render('requirements.py.j2')

    def generate_routes(self):
        return self.render(
            'routes.py.j2',
            routes=self.model.routes, resources=self.model.resources)

    def generate_schemas(self):
        return self.render('schemas.py.j2', schemas=self.model.schemas)

    def generate_models(self):
        return self.render('models.py.j2', schemas=self.model.schemas)

    def generate_validators(self):
        return self.render('validators.py.j2', validators=self.model.validators)

    def generate_filters(self):
        return self.render('filters.py.j2', filters=self.model.filters)

    def generate_views(self):
        for view, ins in self.model.resources_group.iteritems():
            yield (view, self.render('views.py.j2', resources=ins))

    def generate_init(self):
        return self.render('init.py.j2')

    def generate_api(self):
        return self.render('api.py.j2')

    def generate_app(self):
        return self.render('app.py.j2', model=self.model)

    def generate_blueprint(self):
        return self.render('blueprint.py.j2', model=self.model)

    def generate_view_tests(self):
        for view, ins in self.model.resources_group.iteritems():
            yield (view, self.render('view_test.py.j2', resources=ins))
