# Build the App using node
FROM public.ecr.aws/bitnami/node:14.15.1-debian-10-r8

ENV PORT=8080
EXPOSE 8080

WORKDIR /usr/src/app
# WORKDIR /app

RUN ls -alG
COPY package*.json ./
RUN ls -alG
RUN npm install

COPY . .
RUN ls -alG
RUN npm run build

CMD ["npm", "start"]

