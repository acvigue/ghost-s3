FROM ghost:alpine

WORKDIR /var/lib/ghost

RUN npm install --prefix /tmp/ghos3 ghos3-av && \
    cp -r /tmp/ghos3/node_modules/ghos3-av current/core/server/adapters/storage/s3 && \
    rm -r /tmp/ghos3
