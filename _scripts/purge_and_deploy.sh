#!/bin/sh

jekyll build && \
gsutil -m rm -rf gs://blog.pierscin.ski/* && \
gsutil -m cp -z html -a public-read -r ./_site/* gs://blog.pierscin.ski
