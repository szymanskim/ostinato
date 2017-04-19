class User < ApplicationRecord
  has_many :posts
  has_many :likes
  has_many :comments
  has_many :files

  validates :name, presence: true
  validates :surname, presence: true
  validates :type, presence: true
end
