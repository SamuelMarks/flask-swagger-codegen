flask-swagger-codegen
=====================

Generate Flask code from Swagger docs.

## Origin

Forked from: https://pypi.python.org/pypi/Flask-Swagger-Codegen


## Demo

https://asciinema.org/a/18775 (from original author)

### Tutorial

  0. Start with an empty directory
  1. Add your own .yml file in Swagger format, the rest of this assumes "api.yml" filename is chosen and "test-app" is name.
  2. Run `pip install Flask-Swagger-Codegen` (for this repo use: `pip install git+https://github.com/SamuelMarks/flask-swagger-codegen#egg=flask_swagger_codegen`)
  3. `flask_swagger_codegen test-app -s api.yml`
  4. `cd test-app`
  5. `pip install -r requirements.txt`
  6. `python -m test_app.__init__`

## License

MIT
