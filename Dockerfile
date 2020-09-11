FROM lqwangxg/node:alpine AS vuecli
ENV APPNAME vue
WORKDIR ${APPNAME}
VOLUME /${APPNAME}
RUN npm install -g @vue/cli @vue/cli-service-global

EXPOSE 8080
