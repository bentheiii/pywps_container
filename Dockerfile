FROM osgeo/gdal:latest

RUN apt-get install -y --no-install-recommends python3-distutils python3-pip python3-setuptools python3-wheel

WORKDIR /usr/src/app

RUN echo -e '#!/bin/bash\npython3 "$@"' > /usr/bin/python && \
    chmod +x /usr/bin/python

RUN python -m pip install pywps