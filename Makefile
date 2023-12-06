VENV = .venv
PYTHON = ./$(VENV)/bin/python3


# install dependencies
install:
	poetry install --no-root

# install dev dependencies
install-dev:
	poetry install --no-root --with dev

# create/activate virtual environment
venv:
	poetry shell

# show environment information
env:
	poetry env info

# run fastapi application with uvicorn
run:
	uvicorn shaypado_back.app:app --reload

# test code and generate coverage report
test:
	@$(PYTHON) -m pytest tests

# lint code
lint:
	@$(PYTHON) -m flake8 shaypado_back/*
	@$(PYTHON) -m flake8 --ignore=D,W503,E712 tests/*
	@$(PYTHON) -m mypy shaypado_back

# format code
format:
	@$(PYTHON) -m black shaypado_back/ tests/
	@$(PYTHON) -m isort shaypado_back/* tests/*
