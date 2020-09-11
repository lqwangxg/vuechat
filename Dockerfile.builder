FROM lqwangxg/node:alpine AS vuecli

WORKDIR /vuechat
VOLUME ~/vuechat:/vuechat
RUN npm install -g @vue/cli @vue/cli-service-global
CMD ["npm", "run", "build"]
EXPOSE 8080
