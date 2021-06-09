class Book < ApplicationRecord
  has_many :watch_lists
  has_many :deals
  has_many :users, through: :watch_list

  validates :title, presence: true, uniqueness: true
  validates :language, presence: true
  validates :author, presence: true
  validates :price, presence: true
end
