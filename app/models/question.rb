class Question < ApplicationRecord

  with_options presence: true do
    validates :title
    validates :content
    validates :univcoice
    validates :user_id
  end

  validates :genre_id, numericality: { other_than: 0, message: "can't be blank" }
  validates :limit_id, numericality: { other_than: 0, message: "can't be blank" }

  belongs_to :user
  has_many   :answers
  has_one_attached :image
end
