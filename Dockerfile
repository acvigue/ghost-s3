FROM ghost:alpine

WORKDIR /var/lib/ghost

RUN npm install git:https://github.com/acvigue/ghost-storage-adapter-s3.git \
&& mkdir -p ./content/adapters/storage \
&& cp -r ./node_modules/ghost-storage-adapter-s3 ./content/adapters/storage/s3
