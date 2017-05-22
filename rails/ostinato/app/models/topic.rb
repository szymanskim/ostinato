class Topic < ApplicationRecord
  has_many :posts

  validates :codename, presence: true
  validates :group, presence: true
end
