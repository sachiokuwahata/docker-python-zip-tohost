FROM python:3.7

RUN apt-get update && apt-get install -y zip unzip
# RUN pip install --upgrade pip
# RUN pip install --upgrade setuptools

#pipでinstallしたいディレクトリ$$パッケージを指定&&インストール
RUN pip install --target ./python google-api-python-client google-auth requests-oauthlib

ADD entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]