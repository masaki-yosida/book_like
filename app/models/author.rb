class Author < ActiveHash::Base
  include ActiveHash::Associations
  field :name

  self.data = [
    { id: 1, name: '著者1' },
    { id: 2, name: '著者2' },
    { id: 3, name: '著者3' },
    { id: 4, name: '著者4' },
    { id: 5, name: '著者5' },
    # Add other necessary authors
  ]

  has_many :books, class_name: 'Book', foreign_key: 'author_id'
end
