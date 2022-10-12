#!/bin/sh -l

# Parameters
#
# $1 - python-root-list
# $2 - use-flake8
# $3 - use-black
# $4 - use-isort
# ${5} - extra-flake8-options
# ${6} - extra-black-options
# ${7} - extra-isort-options

if [ "$2" = true ] ; then

    echo Running: flake8 ${5} $1

    flake8 ${5} $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "Flake8 ok"
    else
        echo "Flake8 error"
        exit $exit_code
    fi

fi

if [ "$3" = true ] ; then

    echo Running: black --check ${6} $1

    black --check ${6} $1
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "Black ok"
    else
        echo "Black error"
        exit $exit_code
    fi

fi

if [ "$4" = true ] ; then

    echo Running: isort ${7} $1 -c --diff

    isort ${7} $1 -c --diff
    exit_code=$?

    if [ "$exit_code" = "0" ]; then
        echo "isort ok"
    else
        echo "isort error"
        exit $exit_code
    fi

fi