FROM docker.io/node:21-alpine3.18

RUN npm install -D tailwindcss
RUN npx tailwindcss init
COPY . ./
