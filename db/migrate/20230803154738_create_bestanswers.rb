class CreateBestanswers < ActiveRecord::Migration[7.0]
  def change
    create_table :bestanswers do |t|
      t.boolean :best
      t.references :answer,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
