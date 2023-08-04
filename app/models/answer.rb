class Answer < ApplicationRecord
  with_options presence: true do
    validates :content
    validates :user_id
    validates :question_id
  end

  has_one_attached :image

  belongs_to :user
  belongs_to :question
  has_many :comments
  has_one  :bestanswer
end
