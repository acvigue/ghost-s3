FROM ghost:alpine as cloudinary
RUN apk add g++ make python3
RUN su-exec node yarn add ghos3-av

FROM ghost:alpine
COPY --chown=node:node --from=cloudinary $GHOST_INSTALL/node_modules $GHOST_INSTALL/node_modules
COPY --chown=node:node --from=cloudinary $GHOST_INSTALL/node_modules/ghos3-av $GHOST_INSTALL/content/adapters/storage/s3
