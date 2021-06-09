class Book < ApplicationRecord
  has_many :watch_lists
  has_many :deals
  
  validates :title, presence: true, uniqueness: true
  validates :language, presence: true
  validates :author, presence: true
end
