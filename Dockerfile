FROM n8nio/n8n:1.102.4

USER root

RUN apk update && \
    apk add --no-cache ffmpeg curl && \
    mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

USER node

EXPOSE 5678

CMD ["n8n", "start", "--tunnel"]
