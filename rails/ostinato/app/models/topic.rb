class Topic < ApplicationRecord
  has_many :posts

  validates :codename, presence: true

  def last_post
    if posts.count.positive?
      posts.order('updated_at DESC').first
    end
  end
end
