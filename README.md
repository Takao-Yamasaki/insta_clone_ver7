# README

```
```

## 構築手順
### 課題１

- Railsアプリケーションの作成
```
$ rails _7.0.2_ new insta_clone_v7 -d mysql
```

- git flowの導入(プロジェクトの初期化)

```
 $ git flow init
```
- featureブランチを作る
```
$ git flow feature start 01_rubocop_and_rspec
```

  - 参考
  - [git flowについて](https://github.com/DaichiSaito/insta_clone/wiki/git-flow%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6)

- rubocopの導入
  - GemFileに以下を記載
```
  gem 'rubocop'
  gem 'rubocop-rails', require: false
```
  - .rubocop.ymlの作成
  ```
  $ bundle exec rubocop --auto-gen-config
  ```