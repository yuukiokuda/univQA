class Authentication < ApplicationRecord

  with_options presence: true do
    validates :authentication
    validates :info_olduser_id
  end
end
