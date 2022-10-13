# python-lint-action

GitHub Action for python linting with `isort`, `black`, and `flake8`.

## About

- [black](https://github.com/psf/black)
- [isort](https://github.com/timothycrosley/isort)
- [flake8](http://flake8.pycqa.org)

## Usage

See [action.yml](action.yml)

Basic:

```yml
steps:
  - uses: actions/checkout@v3
  - uses: WillCodeForCats/python-lint-action@latest
```


## Credits
* https://github.com/ricardochaves/python-lint
* https://github.com/wrboyce/python-lint-action
