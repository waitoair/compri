class Book < ApplicationRecord
  has_many :watch_lists
  has_many :deals
  has_one_attached :photo
  # validates :title, presence: true, uniqueness: true
  validates :language, presence: true
  validates :author, presence: true

  include PgSearch::Model
  pg_search_scope :search_book,
    against: {title: 'A' , author: 'B'},
    using: {
    tsearch: { prefix: true }
    }
end
