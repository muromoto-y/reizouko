# テーブル設計

## users テーブル

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| nick_name | string | null: false |
| email     | string | null: false |
| password  | string | null: false |


### Association
- has_many :cooking


## cooking テーブル

| Column       | Type       | Options           |
| ------------ | ---------- | ----------------- |
| cooking_name | string     | null: false       |
| text         | text       | null: false       |
| material1    | string     | null: false       |
| quantity1    | string     | null: false       |
| material2    | string     | null: false       |
| quantity2    | string     | null: false       |
| material3    | string     | null: false       |
| quantity3    | string     | null: false       |
| material4    | string     | null: false       |
| quantity4    | string     | null: false       |
| material5    | string     | null: false       |
| quantity5    | string     | null: false       |
| material6    | string     | null: false       |
| quantity6    | string     | null: false       |
| material7    | string     | null: false       |
| quantity7    | string     | null: false       |
| material8    | string     | null: false       |
| quantity8    | string     | null: false       |
| material9    | string     | null: false       |
| quantity9    | string     | null: false       |
| material0    | string     | null: false       |
| quantity0    | string     | null: false       |
| user         | references | foreign_key: true |


### Association
- belongs_to :user

