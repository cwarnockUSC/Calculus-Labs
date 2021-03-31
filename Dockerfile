# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

FROM sagemath/sagemath:8.9

RUN sage -pip install jupyterlab
RUN sage -pip install UofSC_Calc_Labs

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}
