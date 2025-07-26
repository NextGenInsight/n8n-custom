FROM n8nio/n8n:latest

# ffmpeg, curl 설치
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg curl && \
    apt-get clean

EXPOSE 5678

USER node
