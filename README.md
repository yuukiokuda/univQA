# アプリケーション名
univQA
または
KEY TO ME key to success
# アプリケーション概要
- 大学新入学期の不安や悩みを解決したい新入生と保護者のための、現役先輩学生に直接質問できるQ＆Aアプリである
- ユーザーは信頼できるアドバイザーと出会うことで、不安や悩みを解決することができ、既存のサービスにはない、大学新入学期特化であり、回答者は非匿名であることが特徴。

# URL
https://univqa-39536.onrender.com/users/sign_in
未実装部分が多いため、スマホで読み取っていただくと幸いです。以下QRコードです。
[![Image from Gyazo](https://i.gyazo.com/0f577987b782d24bf2ce4a019f0d167f.png)](https://gyazo.com/0f577987b782d24bf2ce4a019f0d167f)

# テスト用アカウント
＜新入生＞
メールアドレス：newusertest@test
パスワード：123456

＜在校生1＞
メールアドレス：oldusertest@test
パスワード：123456

＜在校生2＞
メールアドレス：oldusertest2@test
パスワード：123456

# 利用方法
## 新入生保護者（質問ユーザー）が質問を投稿する
1. アプリ起動後、「新入生保護者」か「在校生」を選択し、ログインもしくはユーザー新規登録を行う。
2. ホーム画面に過去の質問一覧が「未回答」「回答済み」に分けて表示されており、それぞれタイトルをタップすることで、詳細を確認することができる。
3. ホーム画面のアイコンから質問を投稿する。

## 在校生（回答ユーザー）が回答する
1. 質問の詳細を表示させることで、未回答の質問の場合、回答を行うことができる。ただし、在校生であることの証明として事前にユーザーマイページから学生証認証が必要。

## 回答に対してコメントをする
1. 表示されている回答をタップすることで、回答の詳細を確認することができる。
2. 回答詳細画面からコメントすることができる。コメントは質問投稿ユーザーとその回答投稿ユーザーのみ可能。

## 回答の中からベストアンサーを選ぶ（実装予定）
1. 質問ユーザーは回答一覧から金メダルアイコンをタップすることで、ベストアンサーに認定することができる。
2. ベストアンサーが選ばれている状態でないと、回答を締め切ることはできない。
3. ベストアンサーに選ばれると、ポイントがもらえる。

## フッターには5つのアイコンが並んでおり、それぞれタップすることで指定のページへ遷移する
1. フッターのアイコンには「ホーム」「大学別検索」「検索」「やりとり」「マイページ」が存在し、それぞれタップすることで該当するページに遷移し、機能を使うことができる。

## 検索ができる（実装予定）
1. フッターの「大学別検索」をタップすると、すべての質問から、登録した大学のみ抽出された状態で一覧表示される
2. フッターの「検索」をタップすると、検索情報入力フォームが表示され、すべての質問から、条件に合った質問が一覧表示される。

## 新入生保護者は気になった在校生と個人チャットできる
1. 質問ユーザーは、回答一覧に表示されている回答ユーザーアイコンをタップすることで、回答ユーザーのマイページを確認することができる。
2. 質問ユーザーが回答ユーザーのマイページを表示させた場合、「やりとりする」ボタンが表示され、タップすると個人チャットができる。
3. この機能は上記の方法からのみ利用することができる。（「回答ユーザーから質問ユーザーへ」および「質問ユーザー同士」はチャットを開始することができない、）
4. やりとりの履歴はフッターの「やりとり」から確認することができる。

## マイページで投稿一覧が確認できる
1. フッターの「マイページ」をタップすると、自身のユーザーマイページに遷移し登録情報や投稿一覧を確認することができる。
2. 機能設定をすることができ、「通知の有無」「プロフィールの変更」「アカウントのログアウト・削除」ができる。
3. 回答ユーザーはここから学生証認証ができる。学生証認証を行わないと、回答を投稿することができない。

# アプリケーションを作成した背景
前職の経験を活かし、大学入学前の新入生保護者の不安を解決したいと考えた。「大学入学のスタートダッシュを後悔なく切って欲しい」と言う想いがある。
大学入学前は多種多様な不安事、悩み事が多く、どこに相談すればいいのかわからないという声が多い。新入生保護者が在学中の先輩学生に、直接相談できる場所があればこのような不安が解決できると推測し、大学入学期に特化したQ＆Aアプリを開発することにした。

# アプリケーションのイメージ（PDF）
https://acrobat.adobe.com/id/urn:aaid:sc:AP:d72286d8-cbc2-443b-a4ab-324e4fb8bf3b
※閲覧にはadobeアカウントが必要です。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1RzgVttb4n-WSAy5XbLYN6Vf--Hd47Bic6_9dtbukD2g/edit#gid=0

# 実装した機能について
- ホーム画面と質問投稿、回答投稿、コメント機能
- プロフィール表示機能

# 実装予定の機能
- いいね機能
- 学生証認証機能
- DM機能
- 検索機能
- ユーザーが新入生保護者なのか先輩学生なのかで表示される項目が変わる


# データベース設計
[![Image from Gyazo](https://i.gyazo.com/e6e73f375d2fc5debd4b655ceea47013.png)](https://gyazo.com/e6e73f375d2fc5debd4b655ceea47013)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/2e9e06ed665eeacf7ea931677276ea60.png)](https://gyazo.com/2e9e06ed665eeacf7ea931677276ea60)

# 開発環境
- Ruby
- MYSQL
- 

# ローカルでの動作方法
以下のコマンドを順に実行
% git clone https://githuv.com/********
% cd *********
% bundle install
% 

# 工夫したポイント
- ユーザー登録を新入生保護者と先輩学生に分けるために、データベース設計時にusersテーブルにboolean型のnewuserカラムを設定し、別テーブルとしてinfo_oldusersテーブルを用意しました。こうすることで、テーブルに無駄な空データを作られないよう工夫をしました。
<!-- - 可読性を高めるため、リファクタリングや部分テンプレートを積極的に設定するよう意識しました。 -->

# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| nickname           | string  | null: false |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| prefecture_id      | integer | null: false |
| univ_id            | integer | null: false |
| newuser            | boolean | null: false |

### Association

- has_many :questions
- has_many :answers
- has_many :comments
- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages
- has_one  :info_olduser


##  info_oldusers テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| faculty         | string     | null: false                    |
| genre_first_id  | integer    | null: false                    |
| genre_second_id | integer    |                                |
| genre_third_id  | integer    |                                |
| profile         | text       |                                |
| user            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :authentication

##  authentications テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| authentication  | boolean    | null: false                    |
| info_olduser_id | references | null: false, foreign_key: true |


### Association

- belongs_to :info_olduser


##  questions テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| genre_id   | integer    | null: false                    |
| content    | text       | null: false                    |
| limit_id   | integer    | null: false                    |
| univchoice | boolean    | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many   :answers


##  answers テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| content    | text       | null: false                    |
| user       | references | null: false, foreign_key: true |
| question   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :question
- has_many   :comments
- has_one    :bestanswer


##  bestanswers テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| bestanswer | boolean    | null: false                    |
| answer     | references | null: false, foreign_key: true |

### Association

- belongs_to :answer


##  comments テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| content    | string     | null: false                    |
| user       | references | null: false, foreign_key: true |
| answer     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :answer


## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: :room_users
- has_many :messages


## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user


## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

