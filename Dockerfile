FROM n8nio/n8n:1.102.4

USER root

RUN apk update && apk add --no-cache ffmpeg curl

USER node

# 포트 지정은 Azure Web App에서 이미 설정됨, CMD만 명확히 다시 지정
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
