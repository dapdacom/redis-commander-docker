# Redis Commander Docker Image

A [Docker](https://www.docker.com/) container for [Redis Commander](https://github.com/joeferner/redis-commander).
Configure with environment variables.

## Environment variables
- REDIS_PORT: Redis port to connect (default: 6379)
- REDIS_HOST: Redis host to connect (default: localhost)
- REDIS_PASSWORD: Redis password to connect (default: none)
- REDIS_DB: Redis database to connect (default: 0)
- HTTP_USER: Redis-commander http user to autentication (default: none)
- HTTP_PASSWORD: Redis-commander password (default: none)
- PORT: Port of redis-commander (default: 8081)
- ADDRESS: Address to listen redis-commander (default: 0.0.0.0) 

## Example usage
```bash
docker run --name my-redis -d redis && \
docker run -d --link my-redis:redis -p 8081:8081 -e REDIS_HOST=redis dapda/redis-commander
```

Redis Commander will be running on port: `8081`

### Via Docker compose
`docker-compose.yml`
```yml
redis:
  image: redis
redisCommander:
  image: dapda/redis-commander
  environment:
    - REDIS_HOST: redis
  links:
    - redis:redis
  ports:
    - "8081:8081"
```
Followed by: `docker-compose up`


Original work by [tenstartups](https://github.com/tenstartups/redis-commander-docker)