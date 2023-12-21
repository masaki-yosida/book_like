class Author < ActiveHash::Base
  include ActiveHash::Associations
  field :name

  self.data = [
    { id: 1, name: '著者1' },
    { id: 2, name: '著者2' },
    { id: 3, name: '著者3' },
    # 他にも必要な著者を追加
  ]

  has_many :books
end
