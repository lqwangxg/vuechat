FROM lqwangxg/node:alpine AS builder
WORKDIR /vuechat
RUN npm install -g @vue/cli @vue/cli-service-global 
COPY package*.json /vuechat/
RUN npm install
COPY . /vuechat/
RUN npm run build

FROM nginx:alpine
COPY --from=builder /vuechat/dist /usr/share/nginx/html
