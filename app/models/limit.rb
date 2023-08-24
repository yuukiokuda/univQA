class Limit < ActiveHash::Base
  self.data = [
    { id: 0, name: '期限を決めてください' },
    { id: 1, name: '1日後' },
    { id: 2, name: '2日後' },
    { id: 3, name: '3日後' },
    { id: 4, name: '4日後' },
    { id: 5, name: '5日後' },
    { id: 6, name: '6日後' },
    { id: 7, name: '7日後' }
    ]
 
  #  include ActiveHash::Associations
  #  has_many :info_oldusers
 
  end