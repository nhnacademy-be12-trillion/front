FROM nginx:1.29.3-alpine-slim

# 로컬에 있는 nginx/app.conf 파일을 컨테이너 내부의 설정 디렉토리로 복사
COPY nginx/app.conf /etc/nginx/conf.d/default.conf

COPY dist/ /usr/share/nginx/html

HEALTHCHECK CMD wget -q0- http://127.0.0.1/ || exit 1

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
