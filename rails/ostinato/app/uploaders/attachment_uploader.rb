class AttachmentUploader < CarrierWave::Uploader::Base
  storage :file
  after :remove, :delete_empty_dirs

  def store_dir
    Rails.root.join("app/assets/#{model.class.to_s.underscore}/#{model.id}/")
  end

  def extension_whitelist
    %w(jpg jpeg gif png pdf doc htm html ppt docx mp3 midi mp4 wav txt)
  end

  def delete_empty_dirs
    path = ::File.expand_path(store_dir, root)
    Dir.delete(path) # fails if path not empty dir
  rescue SystemCallError
    true # nothing, the dir is not empty
  end
end
