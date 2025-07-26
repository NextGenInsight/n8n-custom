FROM n8nio/n8n:latest

<<<<<<< HEAD
=======
# 필요한 도구 설치 (root 권한에서)
>>>>>>> 9992e7b (temp: commit before pull rebase)
USER root

RUN apt-get update && \
    apt-get install -y ffmpeg curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
<<<<<<< HEAD

USER node
=======
>>>>>>> 9992e7b (temp: commit before pull rebase)

# 포트 지정 (n8n 기본 포트)
EXPOSE 5678

<<<<<<< HEAD
CMD ["n8n"]

=======
# 다시 node 사용자로 전환
USER node

# n8n 실행
CMD ["n8n"]
>>>>>>> 9992e7b (temp: commit before pull rebase)
