class Book < ApplicationRecord
  belongs_to :author, class_name: 'Author', foreign_key: 'author_id'
  validates :title, presence: true

  def self.search(query)
    where("title LIKE ? OR description LIKE ?", "%#{query}%", "%#{query}%")
  end
end
