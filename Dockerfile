FROM ghost:alpine

WORKDIR /var/lib/ghost

RUN npm install ghost-storage-adapter-r2 \
    && mkdir -p ./content.orig/adapters/storage \
    && cp -vr ./node_modules/ghost-storage-adapter-r2 ./content.orig/adapters/storage/r2
