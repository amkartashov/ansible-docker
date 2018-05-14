#!/bin/bash

if [ -f requirements.txt ]; then
  pip --quiet install --requirement requirements.txt
fi

if [ $# -eq 0 ]; then
  echo No commands passed, running shell
  exec bash
fi

exec "$@"
