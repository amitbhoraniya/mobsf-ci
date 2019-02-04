TARGET_PATH='target/app-release.apk' docker-compose up --build --exit-code-from scan
docker run -it -v $(pwd)/output:/app owasp/glue:raw-latest ruby bin/glue -t Dynamic -T /app/report.json --mapping-file mobsf --finding-file-path /app/android.json -z 2
