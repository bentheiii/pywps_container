FROM osgeo/gdal:latest

RUN apt-get install -y --no-install-recommends python3-distutils python3-pip python3-setuptools python3-wheel

WORKDIR /usr/src/app

RUN python3 -m pip install flask gunicorn pywps