# todolist DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false  index: true|
### Association
- has_many :users_categories
- has_many :categories, through: :users_categories
- has_many :tasks

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :users_categories
- has_many :users, through: :users_categories
- has_many :tasks

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|user|references|null:false  foreign_key: true|
|group|references|null:false  foreign_key: true|
### Association
- belongs_to :user
- belongs_to :category

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :category

