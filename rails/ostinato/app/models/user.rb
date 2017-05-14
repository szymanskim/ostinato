class User < ApplicationRecord
  validates :terms_of_service, acceptance: true, on: :create
  before_save :set_default

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :likes
  has_many :comments
  has_many :files

  protected

  def set_default
    self.group = 0 unless group
  end

  validates :name, presence: true
  validates :surname, presence: true
  validates :group, presence: true
end
