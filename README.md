# テーブル設計

##　Users テーブル

| Column             | Type   | Options                        |
|--------------------|--------|--------------------------------|
| nickname           | string | null: false                    |
| email              | string | null: false, foreign_key: true |
| encrypted_password | string | null: false                    |

Association
 has_many cocktail_histories

## Cocktail_histories テーブル

| Column         | Type    | Options                        |
|----------------|---------|--------------------------------|
| user_id        | integer | null: false, foreign_key: true |
| preferences_id | integer | null: false, foreign_key: true |

Association
 belongs_to users
 belongs_to preferences

 ## Preferences テーブル

| Column                | Type    | Options                        |
|-----------------------|---------|--------------------------------|
| base_alcohol          | string  | null: false                    |
| taste                 | string  | null: false, foreign_key: true |
| cocktail_recipe       | string  | null: false                    |
| cocktail_histories_id | integer | null: false, foreign_key: true |

Association
 has_many cocktail_histories