read.me

## 機能
- 投稿機能
- ログイン機能
- 検索機能
- 絞り込み機能


# DBテーブル構成

 ## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :diaries
- has_many :objectives

 ## diariesテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|valuation|integer|null: false|
|sleep|string|null: false|
|feeling|string|null: false|
|short_term_goals|string|null: false|
|long_term_goals|string|null: false|
|plan|string|null: false|
|remark|string| |

### Association
- has_many :diaries_objectives
- has_many :objectives, through: :diaries_objectives
- belongs_to :user

 ## objectivesテーブル

|Column|Type|Options|
|------|----|-------|
|aim|string|null: false|
|unit|string|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association
- has_many :diaries_objectives
- has_many :diaries, through: :diaries_objectives
- has_many :amount
- belongs_to :user

 ## amountsテーブル

|Column|Type|Options|
|------|----|-------|
|amount|float|null: false|
|objective_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :objectives

