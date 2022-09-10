FROM node:lts AS development

WORKDIR /usr/src/app

COPY package*.json ./
COPY prisma ./prisma/

RUN npm install

COPY . .

# RUN npm run seed

RUN npm run build

FROM node:lts as production

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

# RUN npm install @prisma/client

# RUN npm run seed

RUN npm run build

# COPY --from=development /usr/src/app/dist ./dist

# CMD ["node", "dist/src/main"]