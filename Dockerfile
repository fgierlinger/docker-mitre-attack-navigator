FROM node:slim AS builder

WORKDIR /attack-navigator/nav-app
COPY ./attack-navigator/nav-app .
RUN npm install && npm run build

FROM nginx:stable-alpine
COPY --from=builder /attack-navigator/nav-app/dist/ /usr/share/nginx/html
COPY /assets/config.json /usr/share/nginx/html/assets/config.json
COPY /cti/enterprise-attack/enterprise-attack.json /usr/share/nginx/html/assets/enterprise-attack.json
COPY /cti/ics-attack/ics-attack.json /usr/share/nginx/html/assets/ics-attack.json
COPY /cti/mobile-attack/mobile-attack.json /usr/share/nginx/html/assets/mobile-attack.json
