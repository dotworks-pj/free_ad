# FreeAd(仮)

## Ruby version
2.6.3

## System dependencies
Rails 6.0.0

mysql 5.7系

## 事前準備

```sh
$ git clone https://github.com/dotworks-pj/free_ad
$ cd free_ad
```

## yarnのインストール

```sh
$ brew install yarn
```

## Rubyのインストール

インストール可能なRubyバージョンを確認

```sh
$ rbenv install --list
```

2.6.3を入れる

```sh
$ rbenv install 2.6.3
```

インストールされていることを確認

```sh
$ rbenv version
2.6.3
```

MySQLがインストールされていない場合はインストール

```sh
$ brew install mysql
$ xcode-select --install
```

Bundlerでgemをインストール

```sh
$ gem install bundler
$ bundle install --path vendor/bundle
```

パッケージをインストール

```
$ yarn install
```

MySQLが起動していなければ起動

```sh
mysql.server start
```

データベースの初期化

```sh
$ bundle exec rake db:create
$ bundle exec rake db:migrate
```

Puma起動

```sh
$ ./bin/rails s -p 3000
```

## アクセス

ブラウザで以下のURLにアクセスします

トップページ
>http://localhost:3000


管理画面
>http://localhost:3000/admin


```
admin@example.com
```

passwordは `password` でログイン可能


