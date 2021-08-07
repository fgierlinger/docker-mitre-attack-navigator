FROM node:slim AS builder

WORKDIR /attack-navigator/nav-app
COPY ./attack-navigator/nav-app .
RUN npm install && npm run build

FROM nginx:stable-alpine
COPY --from=builder /attack-navigator/nav-app/dist/ /usr/share/nginx/html