FROM python:3-alpine

LABEL "com.github.actions.name"="Python Lint (isort/black/flake8)"
LABEL "com.github.actions.description"="Checks repository using isort, black, and flake8"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/willcodeforcats/python-lint-action"
LABEL "homepage"="https://github.com/willcodeforcats/python-lint-action"
LABEL "maintainer"="Seth Mattinen <sethm@rollernet.us>"

ADD requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
