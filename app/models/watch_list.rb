class WatchList < ApplicationRecord
  belongs_to :user
  has_many :books
end
