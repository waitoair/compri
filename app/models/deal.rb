class Deal < ApplicationRecord
  belongs_to :book

  validates :store, presence: true
  validates :price, presence: true
end
