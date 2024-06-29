FROM ghost:alpine

WORKDIR /var/lib/ghost

RUN npm install ghos3 \
&& mkdir -p ./content/adapters/storage \
&& cp ./node_modules/ghos3/index.js ./content/adapters/storage/s3.js

RUN npm install ghost-mux \
&& mkdir -p ./content/adapters/storage \
&& cp ./node_modules/ghost-mux/index.js ./content/adapters/storage/mux.js
