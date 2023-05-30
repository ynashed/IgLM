# Use an official python runtime as a parent image
FROM python:3.10.4

LABEL maintainer="Youssef Nashed youssef.shady@gmail.com"

ENV PYTHONUNBUFFERED=1

ARG SCRATCH_VOLUME=/scratch
ENV SCRATCH_VOLUME=/scratch
ENV DEBIAN_FRONTEND=noninteractive
RUN echo creating ${SCRATCH_VOLUME} && mkdir -p ${SCRATCH_VOLUME}
VOLUME ${SCRATCH_VOLUME}

WORKDIR /work
ADD . /work

RUN pip install iglm

# RUN chmod +x scripts/run.sh
# ENTRYPOINT ["/work/scripts/run.sh"]
