FROM ghost:alpine

WORKDIR /var/lib/ghost

RUN npm install ghos3-urlfix \
&& mkdir -p ./content/adapters/storage \
&& cp ./node_modules/ghos3-urlfix/index.js ./content/adapters/storage/s3.js
