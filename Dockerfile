FROM gradle:8.10.2-jdk17-jammy AS devcontainer
WORKDIR /app

# RUN gradle clean

CMD ["gradle", "asciidoctor"]
