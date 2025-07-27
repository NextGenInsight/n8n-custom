FROM n8nio/n8n:1.102.4

# 필요한 도구 설치 (root 권한에서)
USER root

# debian 기반이므로 apt 사용 (❗️apk 아님)
RUN apt-get update && apt-get install -y ffmpeg curl && apt-get clean && rm -rf /var/lib/apt/lists/*


# 다시 node 사용자로 전환
USER node

# 포트 지정 (n8n 기본 포트)
EXPOSE 5678

# n8n 실행
CMD ["n8n"]


