FROM gradle:8.10.2-jdk17-jammy AS devcontainer
WORKDIR /app

RUN apt-get update -y

RUN <<EOF bash -ex
apt-get install -y --no-install-recommends asciidoctor
rm -rf /var/lib/lists
EOF


#CMD ["asciidoctor", "--trace", "--destination-dir", "/app/src/docs/html", "/app/src/docs/asciidoc/*.adoc"]
CMD ["gradle", "asciidoctor"]
