class Book < ApplicationRecord
  validates :title, presence: true
  validates :author_id, numericality: { other_than: 1 } 

end
