class RenamePrefestureIdToPrefectureIdInUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :prefesture_id, :prefecture_id
  end
end
