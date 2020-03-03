FROM node:12

RUN npm install -g uglify-js

WORKDIR /klv-decode

CMD [ "/bin/bash" ]

ADD app /klv-decode

RUN ./build.sh && npm install

