class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :send_welcome_email
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :watch_lists
  has_many :books, through: :watch_lists
  validates :email, presence: true, uniqueness: true

  private

  def send_welcome_email
    UserMailer.with(user: self).welcome.deliver_now
  end
end
