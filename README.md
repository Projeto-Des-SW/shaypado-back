# shaypado-back

## Project setup

1. Install python >= 3.10 (Recommended to use [pyenv](https://github.com/pyenv/pyenv))
2. Install [poetry](https://python-poetry.org/docs/#installing-with-the-official-installer)
3. Run `poetry config virtualenvs.in-project true` to create a virtual environment in the project directory
4. Clone the repository
5. Run `make install` to install dependencies
6. Run `make env` to see if everything is ok
7. Run `make venv` to activate the virtual environment
8. Run `make run` to run the server

## Project development

* Always run `make format`, `make lint` and `make test` before committing changes.
* If you want to install a new dependency, run `poetry add <dependency>` and then `make install`.
* If you want to install a new dev dependency, run `poetry add --dev <dependency>` and then `make install-dev`.

## Project structure

* `shaypado_back` - The main package
* `shaypado_back/models` - The database models
* `shaypado_back/routes` - The routes of the API
* `shaypado_back/schemas` - The schemas of the API (uses pydantic)
* `shaypado_back/app.py` - The main file of the application
* `shaypado_back/database.py` - The database configuration
