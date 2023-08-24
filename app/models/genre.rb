class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ジャンル選択' },
    { id: 2, name: 'パソコン' },
    { id: 3, name: '一人暮らし' },
    { id: 4, name: '授業' },
    { id: 5, name: 'アルバイト' },
    { id: 6, name: '部活' },
    { id: 7, name: 'サークル' },
    { id: 8, name: '入学手続き' },
    { id: 9, name: '食堂コンビニ' },
    { id: 10, name: '就活関係' },
    { id: 11, name: '研究室関係' }
  ]
 
  #  include ActiveHash::Associations
  #  has_many :info_oldusers
 
  end