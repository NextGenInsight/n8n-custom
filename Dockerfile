FROM n8nio/n8n:1.102.4

# 루트 권한으로 ffmpeg 및 curl 설치
USER root

# Alpine 기반이므로 apk 사용 (Debian이 아님)
RUN apk update && apk add --no-cache ffmpeg curl

# OS 정보 출력 (빌드 로그에서 확인 가능)
RUN cat /etc/os-release || uname -a

# n8n 사용자로 복귀
USER node

# 기본 포트 지정
EXPOSE 5678

# n8n 실행
CMD ["n8n"]
