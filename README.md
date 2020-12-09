# Auelu-Accounting
  チームの会計として、月会費滞納問題、誰がいつまで月会費を支払っているかを確認できるアプリケーションです。
  
  レスポンシブ対応しているので、スマホでもご確認いただけます。

![top](https://user-images.githubusercontent.com/61536866/101602870-189b1000-3a42-11eb-9552-c62aa955a991.png "ログイン時のトップページ")


![top](https://user-images.githubusercontent.com/61536866/101604839-d0c9b800-3a44-11eb-949f-462c058ffda0.png "ログイン時のトップページ")

# URL
https://aueluaccounting.herokuapp.com/
実際に使用しているものになります。

# 使用技術
* Ruby 
* Ruby on Rails 
* DB: PostgreSQL
* RSpec

# 機能一覧
* ログイン機能(devise)
* 選手情報登録/編集/削除機能
* 管理者クリックで支払い月、支払日取得変更機能
* 背番号検索機能
* 支払い状況表示切替機能（未定）
* レスポンシブ対応

# テスト
* 単体テスト(model)
* 機能テスト(request)
* 統合テスト(system)
