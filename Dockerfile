FROM node:slim AS builder

RUN apt update && apt -y install git && apt clean
RUN git clone https://github.com/mitre-attack/attack-navigator/
WORKDIR /attack-navigator/nav-app
RUN npm install && npm run build

FROM nginx:stable-alpine
COPY --from=builder /attack-navigator/nav-app/dist/ /usr/share/nginx/html