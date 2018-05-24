FROM datopian/auth:latest

USER root
RUN pip3 install https://github.com/datahq/datahub-emails/archive/master.zip
RUN pip3 install https://github.com/datahq/plans/archive/master.zip

ENV ALLOWED_SERVICES=source:plans;rawstore:plans
ENV INSTALLED_EXTENSIONS=datahub_emails

USER $GUNICORN_USER
