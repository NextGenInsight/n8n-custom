FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y ffmpeg curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

USER node

EXPOSE 5678

CMD ["n8n"]

