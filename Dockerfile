FROM ghost:alpine

WORKDIR /var/lib/ghost

RUN npm install ghost-storage-adapter-s3-av \
&& mkdir -p ./content/adapters/storage \
&& cp -r ./node_modules/ghost-storage-adapter-s3-av ./content/adapters/storage/s3
