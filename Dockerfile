FROM n8nio/n8n:1.102.4
USER root
RUN apk update && apk add --no-cache ffmpeg curl
RUN which n8n && node -v && n8n --version
USER node
EXPOSE 5678
CMD ["n8n"]
