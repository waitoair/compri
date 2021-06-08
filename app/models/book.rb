class Book < ApplicationRecord
  # belongs_to :watch_list
  has_many :deals
end
