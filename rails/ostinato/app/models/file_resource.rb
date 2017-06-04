class FileResource < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :name, presence: true
  belongs_to :user
  validate :file_size

  def file_size
    if attachment.size.to_f / (1000 * 1000) > 2
      errors.add(:attachment, 'You cannot upload a file greater than 2 MB')
    end
  end
end
