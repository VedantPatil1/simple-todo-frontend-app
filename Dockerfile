FROM node:20-alpine

COPY ./app /app

WORKDIR /app

EXPOSE 3001

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:3001/ || exit 1