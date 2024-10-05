FROM openjdk:24-ea-17-jdk-slim-bullseye AS devcontainer
WORKDIR /app

RUN apt-get update -y

RUN <<EOF bash -ex
apt-get install -y --no-install-recommends asciidoctor=2.0.12-2 gradle=4.4.1-13
rm -rf /var/lib/lists
EOF


CMD ["asciidoctor", "--trace", "--destination-dir", "/app/src/docs/html", "/app/src/docs/asciidoc/*.adoc"]
