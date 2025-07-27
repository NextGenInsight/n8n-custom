FROM n8nio/n8n:1.102.4

USER root

RUN apk update && apk add --no-cache ffmpeg curl

USER node

EXPOSE 5678

# ✅ 있어야 정상 작동
CMD ["n8n", "start"]
