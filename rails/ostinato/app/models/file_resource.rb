class FileResource < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  belongs_to :user
  validate :file_size

  def file_size
    if attachment.size.to_f / (1000 * 1000) > 15
      errors.add(:attachment, 'You cannot upload a file greater than 15 MB')
    end
  end
end
