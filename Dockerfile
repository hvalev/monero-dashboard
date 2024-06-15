FROM node:22.3.0-bullseye
ENV DASHBOARD_V=1.1.0

RUN apt-get update && apt-get install -y git

RUN git clone -b v${DASHBOARD_V} https://github.com/jnbarlow/monero-dashboard.git && \
    mv monero-dashboard/* ../

RUN npm run init

CMD ["npm", "start"]