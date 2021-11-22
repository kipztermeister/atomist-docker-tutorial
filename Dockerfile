FROM node:14-buster-slim@sha256:23b186bcce56edaaa30ffeaf08bc085f3d88c06c0bd770adbf8db35f74a8ef0e

WORKDIR /app

COPY package* .
COPY version.txt .
COPY index.js .
RUN npm install

CMD ["node", "index.js"]
