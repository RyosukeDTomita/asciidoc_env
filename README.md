# Asciidoc Edit Environment (Dev Contaienr)

![un license](https://img.shields.io/github/license/RyosukeDTomita/asciidoc_env)

## INDEX

- [ABOUT](#about)
- [ENVIRONMENT](#environment)
- [PREPARING](#preparing)
- [HOW TO USE](#how-to-use)

---

## ABOUT

tiny asciidoc sample.

Reference: [Asciidoctor Docs](https://docs.asciidoctor.org/)

---

## ENVIRONMENT

### asciidoctor gradle plugin
- [asciidoctor-gradle-glugin guide](https://asciidoctor.github.io/asciidoctor-gradle-plugin/master)
- [Official repository](https://github.com/asciidoctor/asciidoctor-gradle-plugin)

> [!NOTE]
> gradlew: 特定のversionのGradleを作るためのもの。今回の場合はDockerのgradle imageを使っているためGradleのversionは固定だが，GitHub Actionsで実行することを見据えて追加した。
> 
> ```shell
>  # 作成
>  gradle wrapper
>  # 削除
>  rm gradlew
>  rm gradlew.bat
>  rm -rf gradle/wrapper/
>  ```

---

## PREPARING

1. install VSCode, Docker
2. install VSCode Extensions `Dev Container`

---

## HOW TO USE

### just build html

```shell
docker buildx bake
docker compose up
```

### use asciidoc Dev Container

Open this repository and `Rebuild and Reopen in Container`

```shell
# create html
gradle asciidoctor

# delete html
gradle clean
```

---
