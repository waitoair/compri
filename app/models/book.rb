class Book < ApplicationRecord
  has_many :watch_lists
  has_many :deals
  has_many :users, through: :watch_list
end
