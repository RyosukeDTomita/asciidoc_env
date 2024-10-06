FROM gradle:8.10.2-jdk17-jammy AS devcontainer
WORKDIR /app

RUN apt-get update -y

RUN <<EOF bash -ex
apt-get install -y --no-install-recommends libxext6 libxrender1 libxtst6 libxi6
rm -rf /var/lib/lists
EOF

CMD ["gradle", "asciidoctor"]
