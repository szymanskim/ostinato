class Post < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :likes, as: :likeable
  has_many :comments

  validates :content, presence: true
end
