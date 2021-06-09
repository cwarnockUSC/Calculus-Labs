# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

#FROM sagemath/sagemath:9.1-py3
FROM sage/sage:9.2-py3

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}

# Install this package and dependencies
RUN sage -pip install uofsc_calculus_labs
RUN sage -pip install -U notebook-as-pdf
RUN sage -pip install -U pyppeteer
