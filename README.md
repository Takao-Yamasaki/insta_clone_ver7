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

  - .rubocop.ymlへの記述
  ```
  inherit_from: .rubocop_todo.yml

require:
  - rubocop-rails

# This file overrides https://github.com/bbatsov/rubocop/blob/master/config/default.yml

AllCops:
  NewCops: enable
  SuggestExtensions: false
  DisplayCopNames: true
  DisplayStyleGuide: true
  StyleGuideBaseURL: https://github.com/fortissimo1997/ruby-style-guide/blob/japanese/README.ja.md
  Exclude:
    - 'vendor/**/*'
    - 'db/**/*'
    - 'bin/**/*'
    - 'spec/**/*'
    - 'config/**/*'
Rails:
  Enabled: true

Metrics/AbcSize:
  Max: 25

Style/AsciiComments:
  Enabled: false

Style/ClassAndModuleChildren:
  Enabled: false

Style/Documentation:
  Enabled: false

Naming/PredicateName:
  Enabled: false

Style/FrozenStringLiteralComment:
  Enabled: false
  ```

- Gemfileに追加
  ```
  # Gemfile
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
  ```

- rspecのインストール
```
$ rails g rspec:install
    create  .rspec
    create  spec
    create  spec/spec_helper.rb
    create  spec/rails_helper.rb
```

