# テーブル設計

## Users テーブル

| Column             | Type   | Options                        |
|--------------------|--------|--------------------------------|
| nickname           | string | null: false                    |
| email              | string | null: false, foreign_key: true |
| encrypted_password | string | null: false                    |

Association
 has_many :preferences

## Preferences テーブル

| Column      | Type    | Options                        |
|-------------|---------|--------------------------------|
| user_id     | integer | null: false, foreign_key: true |
| cocktail_id | integer | null: false, foreign_key: true |

Association
 belongs_to :users
 belongs_to :cocktails

 ## Cocktails テーブル

| Column          | Type    | Options                        |
|-----------------|---------|--------------------------------|
| cocktail_name   | string  |                                |
| glass_id        | integer |                                |
| base_alcohol_id | integer |                                |
| taste_id        | integer |                                |
| degree_id       | integer |                                |
| cocktail_recipe | text    |                                |
| image           |         |                                |

Association
 has_many :preferences