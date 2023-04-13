FROM node:18-alpine

WORKDIR /app

# COPY package.json  ./

RUN apk add --no-cache git openssh 

# RUN apk add --no-cache python2
RUN apk add --no-cache python3

RUN apk add --no-cache build-base

# RUN npm install -g node-gyp



# RUN yarn install --production

# COPY next.config.js ./next.config.js
# COPY tailwind.config.js ./tailwind.config.js
# COPY postcss.config.js ./postcss.config.js
COPY . ./
RUN yarn
# RUN npm install --legacy-peer-deps

# COPY app ./app
# COPY pages ./pages
# COPY public ./public
# COPY styles ./styles
# COPY src ./src

EXPOSE 5173
ENV HOST 0.0.0.0

CMD ["yarn","dev"]