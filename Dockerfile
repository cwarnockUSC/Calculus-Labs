# Dockerfile for binder
# Reference: https://mybinder.readthedocs.io/en/latest/dockerfile.html#preparing-your-dockerfile

FROM sagemath/sagemath:8.9

RUN sage -pip install jupyterlab

# Copy the contents of the repo in ${HOME}
COPY --chown=sage:sage . ${HOME}

COPY Scripts/solve_for_x/solve_for_x/dist . ${HOME}
CMD pip install solve_for_x-0.0-py3-none-any.whl
