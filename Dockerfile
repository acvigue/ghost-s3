FROM ghost:alpine

WORKDIR /var/lib/ghost

npm install s3-ghost
mkdir -p ./content/adapters/storage
cp -r ./node_modules/s3-ghost ./content/adapters/storage/s3-ghost
