class User < ApplicationRecord
  validates :terms_of_service, acceptance: true, on: :create

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :likes
  has_many :comments
  has_many :files

  def authenticate_admin!
    authenticate_user! && current_user.is_admin?
  end

  validates :name, presence: true
  validates :surname, presence: true
end
