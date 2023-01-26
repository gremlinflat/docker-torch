#!/bin/bash
jupyter notebook --notebook-dir=${PWD} --ip='*' --port=8888 --no-browser --allow-root
