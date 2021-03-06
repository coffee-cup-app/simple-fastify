const fastify = require("fastify");

const server = fastify();

const deployInfo = {
  RAILWAY_GIT_BRANCH: process.env.RAILWAY_GIT_BRANCH ?? "no branch",
  RAILWAY_GIT_COMMIT_MESSAGE:
    process.env.RAILWAY_GIT_COMMIT_MESSAGE ?? "no commit",
  RAILWAY_STATIC_URL: process.env.RAILWAY_STATIC_URL ?? "no static url",
};

server.get("/", async (request, reply) => {
  reply.code(200).send({ message: "Hello", ...deployInfo });
});

server.listen(process.env.PORT || 9999, "0.0.0.0", (err, address) => {
  if (err) {
    console.error(err);
    process.exit(1);
  }
  console.log(`Server listening at ${address}`);
});

let count = 0;
setInterval(() => {
  console.log(`Count: ${count}`);
  count += 1;
}, 1000)
