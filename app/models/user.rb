class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :watch_list
  has_many :books, through: :watch_list

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
