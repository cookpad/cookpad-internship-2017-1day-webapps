# Cookpad Internship 2017: 1day Web Application Course

# インターンシップ事前準備について

1dayインターンシップでは、プログラミング言語Rubyをつかって、インターンシップを進めていきます。
参加者のみなさんは、事前に環境設定をおこなったうえで、インターンシップへ参加をしてください。

## 必要環境

- Ruby
- Docker

## セットアップ

### macOS

[Homebrew](http://brew.sh/) をつかって環境構築をしてください。 Homebrew をインストール後、下記のように Ruby や関連するライブラリをインストールします。

```
$ brew install ruby git postgres
```

また、 [Docker Community Edition for Mac](https://store.docker.com/editions/community/docker-ce-desktop-mac) をインストールしてください。その後、 postgres:alpine イメージをダウンロードしてください。

```
$ docker pull postgres:alpine
```

## 動作確認

下記のコマンドを実行して、「100% passed」と表示されれば、セットアップは完了です。

```
$ git clone git@github.com:cookpad/cookpad-internship-2017-1day-webapps.git
$ cd cookpad-internship-2017-1day-webapps
$ gem install bundle
$ hash -r
$ bundle install
$ bundle exec ruby tests/run_test.rb
Loaded suite tests
Started
checking for docker-compose... yes
..

Finished in 0.090834 seconds.
--------------------------------------------------------------------------------
2 tests, 3 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
100% passed
--------------------------------------------------------------------------------
22.02 tests/s, 33.03 assertions/s
```
