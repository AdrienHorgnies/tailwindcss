FROM docker.io/node:21

WORKDIR /home/node
USER node

RUN npm install -D tailwindcss
RUN npx tailwindcss init
COPY . ./

ENTRYPOINT ["npx", "tailwindcss", "-i", "input.css", "-o", "src/output.css", "--watch"]
