# docker-flower
Flower for celery + consul + runit

``` bash
docker run -p 5555:5555 -e 'CELERY_BROKER_URL=amqp://guest:guest@127.0.0.1:5672//' flower
```
