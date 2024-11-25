# 설치할 OS
FROM node:20-slim
# 종속성 설치. 근데 라이브러리 많으면 개귀찮음
# RUN npm install express

# app 폴더 생성
WORKDIR /app

# 그래서 package.json(node.js) 설치
# .은 현재 경로 => dockerignore에 기재되지 않은 루트 디렉토리의 모든 파일 app에 복사함
COPY . .

# shell로 종속성 설치 => 호환성 문제 발생 가능
# RUN npm install
RUN ["npm", "install"]

# 무슨 포트 (메모용이라 기능적으로는 노상관)
EXPOSE 8080

# 서버 실행
# docker 파일의 마지막 명령어는 CMD || ENNTRYPOINT
ENTRYPOINT ["node", "server.js"]

# 도커 이미지 생성 (.은 도커파일 경로)
# docker build -t nodeserver:v1 .