class CreateAuthentications < ActiveRecord::Migration[7.0]
  def change
    create_table :authentications do |t|
      t.boolean :authentication,     null: false
      t.references :info_olduser,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
