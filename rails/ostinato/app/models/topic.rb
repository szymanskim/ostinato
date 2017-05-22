class Topic < ApplicationRecord
  has_many :posts

  validates :codename, presence: true
  validates :type, presence: true
end
