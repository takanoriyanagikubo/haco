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