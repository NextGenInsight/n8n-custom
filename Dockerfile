FROM n8nio/n8n:1.102.4

# 필요한 도구 설치 (root 권한에서)
USER root

# 필요한 추가 패키지 설치 (예: ffmpeg, curl 등)
RUN apt-get update && apt-get install -y ffmpeg curl && apt-get clean

USER node

# 포트 지정 (n8n 기본 포트)
EXPOSE 5678

CMD ["n8n"]

# 다시 node 사용자로 전환
USER node

# n8n 실행
CMD ["n8n"]
