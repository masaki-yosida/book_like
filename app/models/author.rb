class Author < ActiveHash::Base
  include ActiveHash::Associations
  field :name

  self.data = [
    { id: 1, name: '太宰治' },
    { id: 2, name: 'ブルーロック' },
    { id: 3, name: 'ワンピース' },
    { id: 4, name: 'ナルト' },
    { id: 5, name: '著者5' },
    # 他にも必要な著者を追加
  ]

  has_many :books
end

