class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#validation未実装

  has_many :questions
  has_many :answers
  has_many :comments
  has_one  :info_olduser

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture, class_name: 'Prefecture'
  belongs_to :univ, class_name: 'Univ'

end
