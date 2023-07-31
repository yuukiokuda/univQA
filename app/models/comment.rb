class Comment < ApplicationRecord
  with_options presence: true do
    validates :content
    validates :user_id
    validates :answer_id
  end
end
