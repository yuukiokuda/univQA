class InfoOlduser < ApplicationRecord
  with_options presence: true do
    validates :faculty
    validates :user_id
  end
  
  validates :genre_first_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :genre_second_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :genre_third_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :limit_id, numericality: { other_than: 0, message: "can't be blank" }
  
  belongs_to :user
end
