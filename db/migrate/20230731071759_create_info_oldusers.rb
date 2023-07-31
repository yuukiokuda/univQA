class CreateInfoOldusers < ActiveRecord::Migration[7.0]
  def change
    create_table :info_oldusers do |t|
      t.string :faculty,         null: false
      t.integer :genre_first_id
      t.integer :genre_second_id
      t.integer :genre_third_id
      t.text :profile,           null: false
      t.boolean :authentication, null: false
      t.references :user,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
