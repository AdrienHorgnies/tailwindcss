FROM docker.io/node:21-alpine3.18

RUN useradd -m tailwind
WORKDIR /home/tailwind
USER tailwind

RUN npm install -D tailwindcss
RUN npx tailwindcss init
COPY . ./

ENTRYPOINT ["npx", "tailwindcss", "-i", "input.css", "-o", "src/output.css", "--watch"]
