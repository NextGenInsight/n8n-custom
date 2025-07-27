FROM n8nio/n8n:1.102.4

USER root
RUN apk update && apk add --no-cache ffmpeg curl

USER node

EXPOSE 5678

CMD ["sh", "-c", "echo $PATH && which n8n && ls -l /usr/local/bin/n8n && n8n start --host=0.0.0.0 --port=5678"]
