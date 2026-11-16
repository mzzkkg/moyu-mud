FROM node:22-alpine
WORKDIR /app
COPY app.zip /app/app.zip
RUN unzip -q app.zip
ENV PORT=3000
EXPOSE 3000
CMD ["node", "mud-game/server.js"]
