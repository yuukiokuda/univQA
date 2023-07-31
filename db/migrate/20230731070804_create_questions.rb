class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :title,       null: false
      t.integer :genre_id,   null: false
      t.text :content,       null: false
      t.integer :limit_id,   null: false
      t.boolean :univchoice, null: false
      t.references :user,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
