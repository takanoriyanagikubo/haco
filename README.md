# アプリケーション名	
  haco

# アプリケーション概要	
大量にある物の整理

# URL	
https://haco555.herokuapp.com/

# テスト用アカウント	
アドレス 1@gmail.com
パスワード 1234qw

Basic認証パスワード
taka
315

# 利用方法	
まず元となるboxを作ります(boxを作るアイコン)
boxを作るとboxの詳細ページが現れるので中身をいれます（収納アイコン）
以上のデータを作成すると各boxに何が入っているのかがわかるようになります。（見るアイコン）
また、itemmからもどのboxに入っているか確認ができるようになります。（topの全てのItem→画像クリック）

# 目指した課題解決	
物を沢山持っている人にどの箱になにが入ってるかわかるようにしたかったです。


# 実装予定の機能	
今後物が増えて行くと感じているので、画像ではなくitem名でも検索できるようにする。
こ
コミュニティも作りたいのでそれに追随する設計。

# テーブル設計
## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nick_name          | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| first_name_kana    | string | null: false               |
| last_name_kana     | string | null: fals                |
| birthday           | date   | null: false               |

### Association

- has_many :boxes
- has_many :items


## items テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| item_name           | string     | null: false                    |
| memo                | string     | null: false                    |

### Association

- belongs_to :boxes
- belongs_to :user

## boxes テーブル

| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| box_text            | string     | null: false                    |

### Association

- has_many :items
- belongs_to :user