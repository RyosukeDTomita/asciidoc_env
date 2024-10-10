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

Gradleでbuildすることでasciidoctorでビルドするよりもライブラリの管理や依存関係の設定が楽になる。

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

### PlantUML

- PlantUMLで図を生成するためにはlibXext.so.6が必要。Dockerfileにaptで追加している。
- Asciidocに直接`.pu`ファイルを埋め込んでいる。
  - [asciidoctor-diagram](https://docs.asciidoctor.org/gradle-plugin/latest/asciidoctor-diagram/)が必要(build.gradleに記載)

### GitHub Pages

作成したAsciiDocをgithubでホストする。
例: https://ryosukedtomita.github.io/asciidoc_env/test.html

#### 初期設定

- [リポジトリの設定](https://github.com/RyosukeDTomita/asciidoc_env/settings/pages)からBuild and deploymentをGithub Actionsに変更
- [リポジトリの環境変数設定](https://github.com/RyosukeDTomita/asciidoc_env/settings/environments/)からfeature/github-pagesを追加

---

## PREPARING

1. install VSCode, Docker
2. install VSCode Extensions `Dev Container`

---

## HOW TO USE

html and svg (created with PlantUML) are stored under `build/`.

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
