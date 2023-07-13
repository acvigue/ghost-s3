FROM ghost:alpine

WORKDIR /var/lib/ghost

RUN npm install ghos3-av \
&& mkdir -p ./content/adapters/storage \
&& cp -r ./node_modules/ghos3-av/* ./content/adapters/storage/s3
