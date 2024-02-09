# trunk-ignore-all(terrascan/AC_DOCKER_0047)
FROM node:20-alpine

COPY ./app /app

WORKDIR /app

RUN addgroup -S appgroup && adduser -S appuser -G appgroup
RUN chown -R appuser:appgroup /app

USER appuser

EXPOSE 3001

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:3001/ || exit 1