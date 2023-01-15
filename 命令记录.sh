# https://www.51cto.com/article/711375.html
docker run -p 8888:8888 --rm -u root \
-v $(pwd)/etc:/fluentd/etc \
-v $(pwd)/logs:/fluentd/logs \
fluent/fluentd:edge-debian-arm64 -c /fluentd/etc/fluentd_basic.conf -v;


curl -X POST -d 'json={"action":"login","user":100}' http://localhost:8888/test.logs;
curl -X POST -d 'json={"action":"logout","user":100}' http://localhost:8888/test.logs;
curl -X POST -d 'json={"action":"logout111","user":100}' http://localhost:8888/test.logs;