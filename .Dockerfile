FROM debian:12

RUN apt-get update && apt-get install -y --no-install-recommends \
    latexmk texlive texlive-lang-polish pandoc git nodejs \
    && rm -rf /var/lib/apt/lists/*
