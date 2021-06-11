class Deal < ApplicationRecord
  belongs_to :book
  has_one_attached :photo
  validates :store, presence: true
  validates :price, presence: true
end
